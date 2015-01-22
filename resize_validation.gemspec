# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "resize-validation"
  spec.version       = Validation::VERSION
  spec.authors       = ["Londerson Araújo"]
  spec.email         = ["londerson@gmail.com"]
  spec.summary       = %q{"Validate data."}
  spec.description   = %q{"An extensive pack of customizable and extensible validation."}
  spec.homepage      = "https://github.com/Resize/Validation"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0.0"
  spec.add_development_dependency "rspec",   "~> 3.1.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake",    "~> 10.0"
end