# frozen_string_literal: true

module PhlexUI
    class Command::DialogTrigger < Base
        DEFAULT_KEYBINDINGS = [
            "keydown.ctrl+k@window",
            "keydown.meta+k@window"
        ].freeze

        def initialize(keybindings: DEFAULT_KEYBINDINGS, **attrs)
            @keybindings = keybindings.map { |kb| "#{kb}->dialog#open" }
            super(**attrs)
        end

        def template(&block)
            div(**attrs, &block)
        end

        private

        def default_attrs
            {
                data: {
                    action: tokens("click->dialog#open", @keybindings.join(' '))
                },
            }
        end
    end
end