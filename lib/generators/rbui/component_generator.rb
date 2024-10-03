module RBUI
  module Generators
    class ComponentGenerator < defined?(Rails::Generators::Base) ? Rails::Generators::Base : Object
      namespace "rbui:component"

      source_root File.expand_path("../../..", __dir__)
      argument :component_name, type: :string, required: true

      def copy_component
        return puts "This generator can only be run in a Rails environment." unless defined?(Rails::Generators::Base)

        copy_common_files
        copy_component_files
      end

      private

      def copy_common_files
        template "#{template_dir}/index.js", "#{destination_path}/index.js" unless File.exist?("#{destination_path}/index.js")
        copy_file File.join(source_path, "base.rb"), File.join(destination_path, "base.rb")
      end

      def copy_component_files
        puts "Component #{component} not found in rbui gem" if component_source.empty?

        component_files = Dir.glob("#{component_source}/*")

        component_files.each do |file|
          copy_file file, File.join(destination_path, component, File.basename(file))
        end
        update_index_file
      end

      def update_index_file
        index_path = File.join(destination_root, "app/components/rbui/index.js")

        content = File.read(index_path)

        add_controller_registration(content)

        File.write(index_path, content)
      end

      def add_controller_registration(content)
        all_js_controllers = Dir.glob(File.join(destination_path, "**", "*_controller.js"))

        # Collect all valid controller information
        valid_controllers = all_js_controllers.map do |controller_file|
          relative_path = Pathname.new(controller_file).relative_path_from(Pathname.new(destination_path))
          file_name = relative_path.basename(".js").to_s
          component_name = file_name.sub(/_controller$/, "")
          new_controller = "#{component_name.camelize}Controller"
          new_path = "./#{relative_path.dirname}/#{file_name}"
          registration_name = "rbui--#{component_name.dasherize}"

          {
            import: "import #{new_controller} from \"#{new_path}\";",
            registration: "application.register(\"#{registration_name}\", #{new_controller});",
            export: "export { default as #{new_controller} } from \"#{new_path}\";"
          }
        end

        # Update imports
        imports = valid_controllers.map { |c| c[:import] }.sort
        import_block = imports.join("\n")
        content.sub!(/\/\/ Import all controller files.*?(?=\n\n)/m, "// Import all controller files\n#{import_block}")

        # Update registrations
        registrations = valid_controllers.map { |c| c[:registration] }.sort
        registration_block = registrations.join("\n")
        content.sub!(/\/\/ Register all controllers.*?(?=\n\n)/m, "// Register all controllers\n#{registration_block}")

        # Update exports
        # exports = valid_controllers.map { |c| c[:export] }.sort
        # export_block = exports.join("\n")
        # content.sub!(/\/\/ Export all controllers.*?(?=\n\n)/m, "// Export all controllers so user of npm package can lazy load controllers\n#{export_block}")

        content
      end

      def component
        @component ||= component_name.downcase
      end

      def source_path
        @source_path ||= "lib/rbui"
      end

      def destination_path
        @destination_path ||= "app/components/rbui"
      end

      def component_source
        @component_source ||= File.join(self.class.source_root, source_path, component)
      end

      def template_dir
        @template_dir ||= File.join(__dir__, "templates")
      end
    end
  end
end
