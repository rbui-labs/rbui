# frozen_string_literal: true

require "bundler/setup"

Bundler.require(:default)

require "phlex"
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
