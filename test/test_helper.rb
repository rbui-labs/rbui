# frozen_string_literal: true

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require_relative "../test/dummy/config/environment"

require "rails/test_help"
require "rails/plugin/test"

require "minitest/autorun"
require "minitest/spec"
require "phlex/testing/view_helper"
require "phlex_ui"

require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]
