# frozen_string_literal: true

module PhlexUI
    class Typography::Lead < Base
        def template(&)
            p(**attrs, &)
        end

        private

        def default_attrs
            {
               class: "text-xl text-muted-foreground" 
            }
        end
    end
end