# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rinterface/version'

Gem::Specification.new do |spec|
  spec.name          = "rinterface"
  spec.version       = Rinterface::VERSION
  spec.authors       = ["syguer"]
  spec.email         = ["ksk.i.530@gmail.com"]

  spec.summary       = %q{Provide common interface like Java one}
  spec.description   = %q{Provide common interface like Java one}
  spec.homepage      = "https://github.com/syguer/rinterface"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
