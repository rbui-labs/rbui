# frozen_string_literal: true

require "test_helper"

class PhlexUI::Tabs::TriggerTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Tabs::Trigger.new(value: "test")

    refute_empty(output)
  end
end
