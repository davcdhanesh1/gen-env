# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gen/env/version'

Gem::Specification.new do |spec|
  spec.name          = "gen-env"
  spec.version       = Gen::Env::VERSION
  spec.authors       = ["Dhanesh Arole"]
  spec.email         = ["davcdhanesh1@gmail.com"]

  spec.summary       = %q{"A ruby based DSL for generating env or properties file"}
  spec.homepage      = "https://github.com/davcdhanesh1/gen-env"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
