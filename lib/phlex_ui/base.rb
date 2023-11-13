# frozen_string_literal: true

module PhlexUI
    class Base < Phlex::HTML
        attr_reader :attrs

        def initialize(**user_attrs)
            @attrs = PhlexUI::AttributeMerger.new(default_attrs, user_attrs).call
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
