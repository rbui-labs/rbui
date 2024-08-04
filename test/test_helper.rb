# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "phlex_ui"
require "rbui"

require "phlex/testing/view_helper"
require "minitest/autorun"

class TestContext < Phlex::HTML
  def view_template(&)
    div(&)
  end
end

def phlex_context(&)
  render TestContext.new, &
end
