# frozen_string_literal: true

module PhlexUI
    class Clipboard::Source < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                data: {
                    clipboard_target: "source",
                }
            }
        end
    end
end