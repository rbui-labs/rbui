# frozen_string_literal: true

require "test_helper"

class RBUI::TableTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    invoices = [
      {identifier: "INV-0001", status: "Active", method: "Credit Card", amount: 100},
      {identifier: "INV-0002", status: "Active", method: "Bank Transfer", amount: 230},
      {identifier: "INV-0003", status: "Pending", method: "PayPal", amount: 350},
      {identifier: "INV-0004", status: "Inactive", method: "Credit Card", amount: 100}
    ]

    output = phlex_context do
      RBUI.Table do
        RBUI.TableCaption { "Employees at Acme inc." }
        RBUI.TableHeader do
          RBUI.TableRow do
            RBUI.TableHead { "Name" }
            RBUI.TableHead { "Email" }
            RBUI.TableHead { "Status" }
            RBUI.TableHead(class: "text-right") { "Role" }
          end
        end
        RBUI.TableBody do
          invoices.each do |invoice|
            RBUI.TableRow do
              RBUI.TableCell(class: "font-medium") { invoice[:identifier] }
              RBUI.TableCell { invoice[:status] }
              RBUI.TableCell { invoice[:method] }
              RBUI.TableCell(class: "text-right") { invoice[:amount] }
            end
          end
        end
        RBUI.TableFooter do
          RBUI.TableRow do
            RBUI.TableHead(class: "font-medium", colspan: 3) { "Total" }
            RBUI.TableHead(class: "font-medium text-right") { invoices.sum { |invoice| invoice[:amount] } }
          end
        end
      end
    end

    assert_match(/Total/, output)
  end
end
