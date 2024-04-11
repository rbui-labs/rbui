# frozen_string_literal: true

require "test_helper"

class PhlexUI::TabsTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Tabs.new

    refute_empty(output)
  end
end
