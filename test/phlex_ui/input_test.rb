# frozen_string_literal: true

require "test_helper"

class PhlexUI::InputTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_default_attributes
    output = render PhlexUI::Input.new

    refute_empty(output)
  end

  def test_no_destructive_classes_when_error_absent
    output = render PhlexUI::Input.new

    refute_match(/destructive/, output)
  end

  def test_add_destructive_classes_when_error_present
    output = render PhlexUI::Input.new(error: "broken")

    assert_match(/destructive/, output)
  end
end
