# frozen_string_literal: true

require "test_helper"

class PhlexUI::TableTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    invoices = [
      {identifier: "INV-0001", status: "Active", method: "Credit Card", amount: 100},
      {identifier: "INV-0002", status: "Active", method: "Bank Transfer", amount: 230},
      {identifier: "INV-0003", status: "Pending", method: "PayPal", amount: 350},
      {identifier: "INV-0004", status: "Inactive", method: "Credit Card", amount: 100}
    ]

    output = phlex_context do
      PhlexUI.Table do
        PhlexUI.TableCaption { "Employees at Acme inc." }
        PhlexUI.TableHeader do
          PhlexUI.TableRow do
            PhlexUI.TableHead { "Name" }
            PhlexUI.TableHead { "Email" }
            PhlexUI.TableHead { "Status" }
            PhlexUI.TableHead(class: "text-right") { "Role" }
          end
        end
        PhlexUI.TableBody do
          invoices.each do |invoice|
            PhlexUI.TableRow do
              PhlexUI.TableCell(class: "font-medium") { invoice[:identifier] }
              PhlexUI.TableCell { invoice[:status] }
              PhlexUI.TableCell { invoice[:method] }
              PhlexUI.TableCell(class: "text-right") { invoice[:amount] }
            end
          end
        end
        PhlexUI.TableFooter do
          PhlexUI.TableRow do
            PhlexUI.TableHead(class: "font-medium", colspan: 3) { "Total" }
            PhlexUI.TableHead(class: "font-medium text-right") { invoices.sum { |invoice| invoice[:amount] } }
          end
        end
      end
    end

    assert_match(/Total/, output)
  end
end
