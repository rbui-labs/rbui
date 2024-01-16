require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
# require "active_job/railtie"
# require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
# require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
require "rails/test_unit/railtie"

require "lookbook"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PhlexUI
  class Application < Rails::Application
    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Configure Lookbook .......................................................

    config.lookbook.title = "Phlex UI"
    config.lookbook.component_paths << "#{Bundler.root}/lib/phlex_ui/components"
    config.lookbook.preview_paths = ["#{Bundler.root}/test/components/previews"]
    config.autoload_paths.push("#{Bundler.root}/test/components/previews")
    # config.lookbook.page_paths = ["#{config.root}/spec/components/docs"]
    config.lookbook.preview_layout = "component_preview"
    config.lookbook.preview_params_options_eval = true
    config.lookbook.preview_display_options = {
      layout: %w[fixed fluid],
      theme: %w[light dark]
    }
  end
end
