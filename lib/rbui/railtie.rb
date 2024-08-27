module RBUI
  if defined?(Rails)
    class Railtie < ::Rails::Railtie
      generators do
        require_relative "../generators/rbui/install/install_generator"

        config.app_generators do |g|
          g.templates.unshift File.expand_path("../templates", __FILE__)
        end

        initializer "rbui.set_generator_namespace" do
          Rails::Generators.namespace(RBUI::Generators, as: "rbui")
        end
      end

      # Add Zeitwerk configuration
      initializer "rbui.configure_zeitwerk" do
        Rails.autoloaders.main.inflector.inflect(
          "phlex_ui" => "PhlexUI",
          "phlexui" => "PhlexUI"
        )
      end

      # Add component loading
      config.to_prepare do
        phlex_ui_components_path = Rails.root.join("app/components/phlex_ui")

        if Dir.exist?(phlex_ui_components_path)
          Dir[phlex_ui_components_path.join("*.rb")].each do |file|
            component_name = File.basename(file, ".rb").camelize
            full_component_name = "PhlexUI::#{component_name}"

            if defined?(full_component_name.constantize)
              load file
            end
          end
        end
      end
    end
  end
end
