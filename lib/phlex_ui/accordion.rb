# frozen_string_literal: true

module PhlexUI
    class Accordion < Base
        def template(&)
            div(data: { controller: 'accordion' }, class: 'w-full', &)
        end
    end
end
