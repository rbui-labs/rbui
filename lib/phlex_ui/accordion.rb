# frozen_string_literal: true

module PhlexUI
    class Accordion < Base
        def template(&)
            div(**attrs, &)
        end

        def add_item(title, content, open: false)
            render Accordion::Item.new(open: open) do
                render PhlexUI::Accordion::Trigger.new do
                    render PhlexUI::Accordion::DefaultTrigger.new { title }
                end
                render PhlexUI::Accordion::Content.new do
                    render PhlexUI::Accordion::DefaultContent.new { content }
                end
            end
        end

        private

        def default_attrs
            {
                class: 'w-full'
            }
        end
    end
end
