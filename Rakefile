# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

task default: :test
Rake::TestTask.new do |t|
  t.libs << "test"
  t.pattern = "test/*_test.rb"
  t.warning = false
end
require "minitest/test_task"

Minitest::TestTask.create(:test) do |t|
  t.warning = false
end

# task default: :test
