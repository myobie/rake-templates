# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake/templates/version'

Gem::Specification.new do |spec|
  spec.name          = "rake-templates"
  spec.version       = Rake::Templates::VERSION
  spec.authors       = ["myobie"]
  spec.email         = ["me@nathanherald.com"]
  spec.summary       = %q{Simple template rendering through rake}
  spec.description   = %q{A small wrapper around tilt to provide templating.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"

  spec.add_dependency "rake", "~> 10.0"
  spec.add_dependency "tilt", "~> 1.4"
end
