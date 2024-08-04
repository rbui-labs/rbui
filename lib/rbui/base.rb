# frozen_string_literal: true

require "tailwind_merge"

module RBUI
  class Base < Phlex::HTML
    attr_reader :attrs

    def initialize(**user_attrs)
      @attrs = AttributeMerger.new(default_attrs, user_attrs).call
      @attrs[:class] = ::TailwindMerge::Merger.new.merge(@attrs[:class]) if @attrs[:class]
    end

    if defined?(Rails) && Rails.env.development?
      def before_template
        comment { "Before #{self.class.name}" }
        super
      end
    end

    private

    def default_attrs
      {}
    end
  end
end
