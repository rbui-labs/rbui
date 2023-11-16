# frozen_string_literal: true

module PhlexUI
    class Hint < Base
        def template(&)
            p(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "text-[0.8rem] text-muted-text"
            }
        end
    end
end