# frozen_string_literal: true

module PhlexUI
    class Accordion::Item < Base
        def initialize(open: false)
            @open = open
        end

        def template(&)
            div(data: { controller: "accordion", accordion_open_value: @open }, class: 'border-b', &)
        end
    end
end
