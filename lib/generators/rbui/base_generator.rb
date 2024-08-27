require "rails/generators"

module RBUI
  module Generators
    class BaseGenerator < defined?(Rails::Generators::Base) ? Rails::Generators::Base : Object
      namespace "rbui:base"

      source_root File.join(__dir__, "templates")

      def copy_templates
        template "base_store_initializer.rb", "config/initializers/rbui.rb"
      end
    end
  end
end
