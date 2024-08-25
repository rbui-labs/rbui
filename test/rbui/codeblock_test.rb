# frozen_string_literal: true

require "test_helper"

class RBUI::CodeblockTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    code = <<~CODE
      def hello_world
        puts "Hello, world!"
      end
    CODE

    output = phlex_context do
      RBUI.Codeblock(code, syntax: :ruby)
    end

    assert_match(/Hello/, output)
  end
end
