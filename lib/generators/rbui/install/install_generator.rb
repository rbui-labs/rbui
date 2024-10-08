module RBUI
  module Generators
    class InstallGenerator < defined?(Rails::Generators::Base) ? Rails::Generators::Base : Object
      namespace "rbui:install"

      if defined?(Rails::Generators::Base)
        source_root File.expand_path("templates", __dir__)

        def add_phlex_rails
          say "Checking for Phlex Rails"
          if gem_installed?("phlex-rails")
            say "Phlex Rails is already installed", :green
          else
            say "Adding Phlex Rails"
            run "bundle add phlex-rails"
          end

          if yes?("Do you want to run the Phlex installer? (y/n)")
            say "Run Phlex install"
            run "bin/rails generate phlex:install"
          end
        end

        def install_stuff
          if yes?("Do you want to set up the dev test data? (y/n)")
            say "Add index controller"
            run "bin/rails generate controller static index --no-helper --no-assets --no-test-framework --no-jbuilder"

            say "Add index view"
            run "bin/rails g phlex:view Static::Index"

            append_to_file "app/controllers/static_controller.rb", after: "  def index" do
              "\n    render Static::IndexView"
            end

            template "index_view.rb", "app/views/static/index_view.rb", force: true

            say "Add index route"
            append_to_file "config/routes.rb", after: "Rails.application.routes.draw do" do
              "\n  root to: \"static#index\"\n"
            end
          end

          say "Checking for Tailwind CSS"
          if gem_installed?("tailwindcss-rails")
            say "Tailwind CSS is already installed", :green

            if yes?("Do you want to run the Tailwind installer? (y/n)")
              say "Run Tailwind install"
              run "./bin/rails tailwindcss:install"
            end
          elsif yes?("Do you want us to install Tailwind CSS? (y/n)")
            say "Adding Tailwind CSS"
            run "./bin/bundle add tailwindcss-rails"

            say "Run Tailwind install"
            run "./bin/rails tailwindcss:install"
          end

          say "Add tailwind animate"
          run "yarn add tailwindcss-animate"

          say "update tailwind.config.js"
          template "tailwind.config.js", "config/tailwind.config.js", force: true

          say "Add CSS variables"
          template "application.tailwind.css", "app/assets/stylesheets/application.tailwind.css", force: true
        end

        def pin_rbui_js
          importmap_binstub = Rails.root.join("bin/importmap")
          importmap_config_path = Rails.root.join("config/importmap.rb")
          stimulus_path = Rails.root.join("app/javascript/application.js")
          destination_path = Rails.root.join("app/components/rbui")
          template_dir = File.join(__dir__, "../templates")
          package_name = "rbui-js"

          if importmap_binstub.exist?
            say "Pin #{package_name}"
            append_to_file importmap_config_path do
              # %(pin "rbui-js", to: "rbui-js.js"\n)
              %(pin #{package_name}, to: "rbui-js.js"\n)
            end
          else
            say "Add rbui-js package"
            run "yarn add #{package_name}"
          end

          if stimulus_path.exist?
            say "Add RBUI Stimulus controllers"
            template "#{template_dir}/index.js", "#{destination_path}/index.js" unless File.exist?("#{destination_path}/index.js")
            append_to_file stimulus_path, "\nimport \"../components/rbui\";\n"
            run "yarn build"
          else
            say "Default Stimulus location is missing: app/javascript/controllers/index.js", :red
            say "        Add to your Stimulus index.js:"
            say "            import \"#{package_name}\""
          end
        end

        def include_rbui
          say "Add RBUI to your global component layout"
          insert_into_file "app/views/application_view.rb", after: "class ApplicationView < ApplicationComponent\n" do
            "  include RBUI\n"
          end
        end

      else
        def self.source_root
          File.expand_path("templates", __dir__)
        end

        def add_stylesheet_link
          puts "This generator can only be run in a Rails environment."
        end

        def revoke
          puts "This generator can only be run in a Rails environment."
        end
      end

      private

      def gem_installed?(name)
        Gem::Specification.find_all_by_name(name).any?
      end
    end
  end
end
