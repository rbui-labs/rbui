# frozen_string_literal: true

module PhlexUI
    class Accordion::Content < Base
        def template(&)
            div(data: { accordion_target: "content" }, class: 'overflow-y-hidden') do
                div(class: 'pb-4 pt-0', &)
            end
        end
    end
end