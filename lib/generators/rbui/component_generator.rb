module RBUI
  module Generators
    class ComponentGenerator < defined?(Rails::Generators::Base) ? Rails::Generators::Base : Object
      namespace "rbui:component"

      if defined?(Rails::Generators::Base)
        # Set the source root to the root of the gem
        source_root File.expand_path("../../..", __dir__)

        # Define a required argument for the component name
        argument :component_name, type: :string, required: true

        def copy_component_files
          # Convert component name to lowercase
          component = component_name.downcase

          # Define source and destination paths
          source_path = "lib/rbui"
          destination_path = "app/components/rbui"

          # Full path to the component in the gem
          component_source = File.join(self.class.source_root, source_path, component)

          if File.directory?(component_source)
            copy_directory(component, destination_path)
          elsif File.exist?("#{component_source}.rb")
            copy_single_file(component, source_path, destination_path)
          else
            puts "Component '#{component}' not found in phlex_ui gem"
          end
        end

        private

        def copy_directory(component, destination_path)
          # Copy the entire directory if it exists
          directory File.join("lib/rbui", component), File.join(destination_path, component)
          puts "Copied directory #{component} to #{destination_path}"
        end

        def copy_single_file(component, source_path, destination_path)
          # Copy base.rb and the component file if it's a single file
          copy_file File.join(source_path, "base.rb"), File.join(destination_path, "base.rb")
          copy_file File.join(source_path, "#{component}.rb"), File.join(destination_path, "#{component}.rb")
          puts "Copied file #{component}.rb to #{destination_path}"
        end
      else
        # Fallback for non-Rails environments
        def copy_component_files
          puts "This generator can only be run in a Rails environment."
        end
      end
    end
  end
end
