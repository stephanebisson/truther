# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'truther/version'

Gem::Specification.new do |spec|
  spec.name          = "truther"
  spec.version       = Truther::VERSION
  spec.authors       = ["Stephane Bisson"]
  spec.email         = ["stephane.c.bisson@gmail.com"]
  spec.summary       = "Converts many strings and values to true or false."
  spec.description   = "Converts many strings and values to true or false."
  spec.homepage      = "https://github.com/stephanebisson/truther"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
