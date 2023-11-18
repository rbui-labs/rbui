# frozen_string_literal: true

module PhlexUI
    class Typography::H1 < Base
        def template(&)
            h1(**attrs, &)
        end

        private

        def default_attrs
            {
                class: "scroll-m-20 text-3xl font-semibold leading-normal lg:leading-normal tracking-tight lg:text-4xl"
            }
        end
    end
end
