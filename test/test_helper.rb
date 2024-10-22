# frozen_string_literal: true

require "bundler/setup"

Bundler.require(:default)

require "phlex"
# require "phlex/testing/view_helper"
require "minitest/autorun"

class TestContext < Phlex::HTML
  def view_template(&)
    div(&)
  end
end

def phlex_context(&)
  render TestContext.new, &
end

# this is a monkey patch for https://github.com/phlex-ruby/phlex/pull/809
module Phlex::Testing
  module Basic
    def render(view, &)
      if view.is_a?(Class) && view < Phlex::SGML
        view = view.new
      end

      view.call(view_context:, &)
    end

    def view_context
      nil
    end
  end
  ViewHelper = Basic
end

# this is a tracepoint that will output the path of all files loaded that contain the string "phlex"
# trace = TracePoint.new(:class) do |tp|
#   puts "Loaded: #{tp.path}" if tp.path.include?("phlex")
# end
# trace.enable
