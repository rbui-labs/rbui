# frozen_string_literal: true

require "tailwind_merge"

module PhlexUI
  class Base < Phlex::HTML
    TAILWIND_MERGER = TailwindMerge::Merger.new.freeze
    
    attr_reader :attrs

    def initialize(**user_attrs)
      @attrs = PhlexUI::AttributeMerger.new(default_attrs, user_attrs).call
      @attrs[:class] = TAILWIND_MERGER.merge(@attrs[:class]) if @attrs[:class]
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
