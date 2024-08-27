# rails g phlex:component alert
module RBUI
  module Generators
    class BaseGenerator < defined?(Rails::Generators::Base) ? Rails::Generators::Base : Object
      namespace "rbui:component"

      if defined?(Rails::Generators::Base)
        source_root File.expand_path("../../..", __dir__)
        argument :component_name, type: :string, required: true

        def copy_component_files
          component = component_name.downcase
          source_path = "lib/rbui"
          destination_path = "app/components/phlex_ui"

          if File.directory?(File.join(self.class.source_root, source_path, component))
            # If it's a directory, copy the entire directory
            directory File.join(source_path, component), File.join(destination_path, component)
            puts "Copied directory #{component} to #{destination_path}"
          elsif File.exist?(File.join(self.class.source_root, source_path, "#{component}.rb"))
            # If it's a single file, copy just the file
            copy_file File.join(source_path, "base.rb"), File.join(destination_path, "base.rb")
            # copy_file File.join(source_path, "attribute_merger.rb"), File.join(destination_path, "attribute_merger.rb")
            copy_file File.join(source_path, "#{component}.rb"), File.join(destination_path, "#{component}.rb")
            puts "Copied file #{component}.rb to #{destination_path}"
          else
            puts "Component '#{component}' not found in phlex_ui gem"
          end
        end

        private

        def source_path(component)
          "lib/phlex_ui/#{component}"
        end
      else
        def copy_component_files
          puts "This generator can only be run in a Rails environment."
        end
      end
    end
  end
end
