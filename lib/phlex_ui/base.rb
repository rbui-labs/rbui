# frozen_string_literal: true

module PhlexUI
    class Base < Phlex::HTML
        if defined?(Rails) && Rails.env.development?
            def before_template
                comment { "Before #{self.class.name}" }
                super
            end
        end
    end
end
