# frozen_string_literal: true

module PhlexUI
    class Form < Base
        def template(&)
            form(**attrs, &)
        end

        def input(name, label: nil, hint: false, error: nil, **input_attrs)
            name = name.to_s
            label ||= convert_name_to_label(name)

            render PhlexUI::Form::Item.new do
                render PhlexUI::Label.new(for: name) { label } if label
                render PhlexUI::Input.new(name: name, id: name, **input_attrs)
                render PhlexUI::Hint.new { hint } if hint
            end
        end

        def button(**button_attrs, &)
            render PhlexUI::Button.new(**button_attrs, &)
        end

        private

        def convert_name_to_label(name)
            name.to_s.split("_").map(&:capitalize).join(" ")
        end

        def default_attrs
            {}
        end
    end
end