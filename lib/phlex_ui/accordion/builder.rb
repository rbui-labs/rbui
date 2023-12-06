# frozen_string_literal: true

module PhlexUI
    class Accordion::Builder < Base
        def template(&block)
            render PhlexUI::Accordion.new(**attrs) do
                block.call
            end
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
    end
end
