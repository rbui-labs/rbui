# frozen_string_literal: true

require "bundler/gem_tasks"
require "standard/rake"
require "minitest/test_task"

Minitest::TestTask.create(:test) do |t|
  t.warning = false
end

task default: :test
