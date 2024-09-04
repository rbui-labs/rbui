# frozen_string_literal: true

require "test_helper"

class PhlexUI::PaginationTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Pagination do
        RBUI.PaginationContent do
          RBUI.PaginationItem(href: "#") do |item|
            item.plain "First"
          end
          RBUI.PaginationItem(href: "#") do |item|
            item.plain "Prev"
          end

          RBUI.PaginationEllipsis

          RBUI.PaginationItem(href: "#") { "4" }
          RBUI.PaginationItem(href: "#", active: true) { "5" }
          RBUI.PaginationItem(href: "#") { "6" }

          RBUI.PaginationEllipsis

          RBUI.PaginationItem(href: "#") do |item|
            item.plain "Next"
          end
          RBUI.PaginationItem(href: "#") do |item|
            item.plain "Last"
          end
        end
      end
    end

    assert_match(/First/, output)
  end
end
