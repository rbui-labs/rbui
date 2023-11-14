# frozen_string_literal: true

require "rouge"

module PhlexUI
    class Codeblock < Base
        FORMATTER = ::Rouge::Formatters::HTML.new
        ROUGE_CSS = Rouge::Themes::Github.mode(:dark).render(scope: '.highlight') # See themes here: https://rouge-ruby.github.io/docs/Rouge/CSSTheme.html

        def initialize(code, syntax:, **attrs)
            @code = code
			@syntax = syntax.to_sym

			if @syntax == :ruby || @syntax == :html
				@code = @code.gsub(/(?:^|\G) {2}/m, "	")
			end

            super(**attrs)
        end

        def template(&)
            style() { ROUGE_CSS.html_safe } # For faster load times, move this to the head of your document. (Also move ROUGE_CSS value to head of document)
            div(**attrs) do
                div(class: "after:content-none") do
                    pre do
                        unsafe_raw FORMATTER.format(
                            lexer.lex(@code)
                        )
                    end
                end
            end
        end

        private

        def default_attrs
            {
                class: "highlight max-h-[350px] after:content-none flex font-mono overflow-auto overflow-x rounded-md border !bg-stone-900 [&_pre]:p-4"
            }
        end

		def lexer
			Rouge::Lexer.find(@syntax)
		end
    end
end