# frozen_string_literal: true

require "json"
require "phlex"

module RBUI
  extend Phlex::Kit

  attr_accessor :namespace

  def self.setup
    yield self
    create_namespace_module if namespace
  end

  def self.create_namespace_module
    source_module = self
    mod = namespace.to_s.split("::").inject(Object) do |parent, const|
      parent.const_get(const)
    rescue
      parent.const_set(const, Module.new)
    end

    mod.singleton_class.class_eval do
      define_method :const_missing do |name|
        source_module.const_defined?(name) ? source_module.const_get(name) : super(name)
      end

      define_method :method_missing do |name, *args, &block|
        source_module.respond_to?(name) ? source_module.send(name, *args, &block) : super(name, *args, &block)
      end

      define_method :respond_to_missing? do |name, include_private = false|
        source_module.respond_to?(name) || super(name, include_private)
      end
    end
  end
end

# Require the Base class first
require_relative "rbui/base"

# Manually require all the files
Dir.glob(File.join(__dir__, "rbui", "**", "*.rb")).sort.each { |file| require file }
