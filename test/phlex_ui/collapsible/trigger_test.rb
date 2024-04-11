# frozen_string_literal: true

require "test_helper"

class PhlexUI::Collapsible::TriggerTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Collapsible::Trigger.new

    refute_empty(output)
  end
end
