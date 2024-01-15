# frozen_string_literal: true

module PhlexUI::Components
  class Avatar::Builder < Base
    def initialize(size: :md, src: nil, alt: nil, initials: nil, **attrs)
      @size = size
      @src = src
      @alt = alt
      @initials = initials
      super(**attrs)
    end

    def template
      render PhlexUI::Avatar.new(size: @size, **attrs) do
        render_image if @src
        render_initials if @initials
      end
    end

    private

    def render_image
      render ::PhlexUI::Avatar::Image.new(src: @src, alt: @alt)
    end

    def render_initials
      render ::PhlexUI::Avatar::Fallback.new { @initials }
    end

    def default_attrs
      {
        class: tokens("relative flex shrink-0 overflow-hidden rounded-full", @size_classes)
      }
    end
  end
end
