# frozen_string_literal: true

module PhlexUI::Components
  class Select::Builder < Base
    def initialize(object, method, collection: [], placeholder: "", value: nil, input_attrs: {}, trigger_attrs: {}, value_attrs: {}, content_attrs: {}, group_attrs: {}, item_attrs: {}, **attrs)
      @object = set_object(object)
      @method = method
      @collection = collection
      @placeholder = placeholder
      @value = value || @object.send(@method)
      @input_attrs = input_attrs
      @trigger_attrs = trigger_attrs
      @value_attrs = value_attrs
      @content_attrs = content_attrs
      @group_attrs = group_attrs
      @item_attrs = item_attrs
      super(**attrs)
    end

    def template
      render PhlexUI::Select.new(**attrs) do
        render PhlexUI::Select::Input.new(value: @object.send(@method), id: select_id, name: input_name, type: "hidden", **@input_attrs)
        render PhlexUI::Select::Trigger.new(**@trigger_attrs) do
          if @value
            render PhlexUI::Select::Value.new(id: select_id, **@value_attrs) { @collection.find { |choice| choice[1] == @value }[0] }
          else
            render PhlexUI::Select::Value.new(placeholder: @placeholder, id: select_id, **@value_attrs)
          end
        end
        render PhlexUI::Select::Content.new(outlet_id: select_id, **@content_attrs) do
          render PhlexUI::Select::Group.new(**@group_attrs) do
            @collection.each do |choice|
              render PhlexUI::Select::Item.new(value: choice[1], selected: @object&.send(@method) == choice[1], **@item_attrs) { choice[0] }
            end
          end
        end
      end
    end

    private

    def select_id
      "#{object_name}_#{@method}"
    end

    def input_name
      "#{object_name}[#{@method}]"
    end

    def object_name
      @object.class.name.underscore
    end

    def set_object(object)
      # if string convert to new instance of object
      if object.is_a?(String)
        object.classify.constantize.new
      else
        object
      end
    end

    def default_attrs
      {}
    end
  end
end
