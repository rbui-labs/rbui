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
# Add this near the top of your test_helper.rb
trace = TracePoint.new(:class) do |tp|
  puts "Loaded: #{tp.path}" if tp.path.include?("ahoy")
end
trace.enable
