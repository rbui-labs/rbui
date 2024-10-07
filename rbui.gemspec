require_relative "lib/rbui/version"

Gem::Specification.new do |s|
  s.name = "rbui"
  s.version = RBUI::VERSION
  s.summary = "RbUI is a UI Component Library for Ruby developers."
  s.description = "RbUI is a UI Component Library for Ruby developers. Built on top of the Phlex Framework."
  s.authors = ["George Kettle"]
  s.email = "george.kettle@icloud.com"
  s.files = Dir["lib/**/*.rb", "tasks/**/*.rake"]
  s.require_path = "lib"
  s.homepage =
    "https://rubygems.org/gems/rbui"
  s.license = "MIT"

  s.required_ruby_version = ">= 3.2"

  s.add_dependency "phlex", "~> 2.0.0.beta2"
  s.add_dependency "rouge", "~> 4.2.0"
  s.add_dependency "tailwind_merge", ">= 0.12"

  s.add_development_dependency "rake"
  s.add_development_dependency "standard"
  s.add_development_dependency "minitest"
end
