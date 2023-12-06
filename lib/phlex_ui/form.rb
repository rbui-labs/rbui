# frozen_string_literal: true

module PhlexUI
    class Form < Base
        def template(&)
            form(**attrs, &)
        end

        private

        def default_attrs
            {}
        end
    end
end