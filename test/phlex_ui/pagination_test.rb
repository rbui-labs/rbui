# frozen_string_literal: true

require "test_helper"

class PhlexUI::PaginationTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      PhlexUI.Pagination do
        PhlexUI.PaginationContent do
          PhlexUI.PaginationItem(href: "#") do |item|
            item.plain "First"
          end
          PhlexUI.PaginationItem(href: "#") do |item|
            item.plain "Prev"
          end

          PhlexUI.PaginationEllipsis

          PhlexUI.PaginationItem(href: "#") { "4" }
          PhlexUI.PaginationItem(href: "#", active: true) { "5" }
          PhlexUI.PaginationItem(href: "#") { "6" }

          PhlexUI.PaginationEllipsis

          PhlexUI.PaginationItem(href: "#") do |item|
            item.plain "Next"
          end
          PhlexUI.PaginationItem(href: "#") do |item|
            item.plain "Last"
          end
        end
      end
    end

    assert_match(/First/, output)
  end
end
