# frozen_string_literal: true

require "test_helper"

class RBUI::SetupTest < Minitest::Test
  def setup
    @original_namespace = RBUI.namespace
  end

  def teardown
    RBUI.namespace = @original_namespace
    Object.send(:remove_const, :UI) if Object.const_defined?(:UI)
  end

  def test_default_namespace
    RBUI.setup {}

    assert_nil RBUI.namespace
    assert_kind_of RBUI::Base, RBUI::Button.new
  end

  def test_custom_namespace
    RBUI.setup do |config|
      config.namespace = "UI"
    end

    assert_equal "UI", RBUI.namespace
    assert_equal RBUI::Base, UI::Base
    assert_kind_of RBUI::Base, UI::Button.new
  end
end
