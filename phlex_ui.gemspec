Gem::Specification.new do |s|
  s.name = "phlex_ui"
  s.version = "0.1.9"
  s.summary = "PhlexUI is a UI Component Library for Ruby developers."
  s.description = "PhlexUI is a UI Component Library for Ruby developers. Built on top of the Phlex Framework."
  s.authors = ["George Kettle"]
  s.email = "george.kettle@icloud.com"
  s.files = Dir["lib/**/*.rb", "tasks/**/*.rake"]
  s.homepage =
    "https://rubygems.org/gems/phlex_ui"
  s.license = "MIT"

  s.required_ruby_version = ">= 2.7"

  s.add_dependency "phlex", "~> 1.10"
  s.add_dependency "rouge", "~> 4.2.0"
  s.add_dependency "zeitwerk", "~> 2.6"
  s.add_dependency "activesupport", "~> 6.0"

  # When gem is installed from source, we add `ruby-next` as a dependency
  # to auto-transpile source files during the first load
  if File.directory?(File.join(__dir__, ".git"))
    s.add_runtime_dependency "ruby-next", "~> 1.0"
  else
    s.add_runtime_dependency "ruby-next-core", "~> 1.0"
  end

  s.add_development_dependency "rake"
  s.add_development_dependency "standard"
  s.add_development_dependency "minitest"
end
