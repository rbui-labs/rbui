class ButtonPreview < Lookbook::Preview
  # @param variant select { choices: [primary, link, secondary, destructive, outline, ghost] }
  # @param size select { choices: [sm, md, lg, xl] }
  # @param icon toggle
  def default(variant: :primary, size: :md, icon: false)
    render PhlexUI::Button.new(variant: variant, size: size, icon: icon) do
      icon ? "♥️" : "Click me"
    end
  end
end
