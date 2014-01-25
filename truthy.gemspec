# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'truthy/version'

Gem::Specification.new do |spec|
  spec.name          = "truthy"
  spec.version       = Truthy::VERSION
  spec.authors       = ["Stephane Bisson"]
  spec.email         = ["stephane.c.bisson@gmail.com"]
  spec.summary       = "Converts many strings to their boolean value."
  spec.description   = "Converts true, t, yes, y, 1, oui, etc to boolean true."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
