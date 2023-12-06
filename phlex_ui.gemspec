Gem::Specification.new do |s|
  s.name        = "phlex_ui"
  s.version     = "0.1.2"
  s.summary     = "PhlexUI is a UI Component Library for Ruby developers."
  s.description = "PhlexUI is a UI Component Library for Ruby developers. Built on top of the Phlex Framework."
  s.authors     = ["George Kettle"]
  s.email       = "george.kettle@icloud.com"
  s.files = Dir["lib/**/*.rb", "tasks/**/*.rake"]
  s.homepage    =
    "https://rubygems.org/gems/phlex_ui"
  s.license       = "MIT"

  s.add_dependency "phlex", "~> 1.7"
	s.add_dependency "zeitwerk", "~> 2.6"
  s.add_dependency "rouge", "~> 4.2.0"
end