# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maxrmapi/version'

Gem::Specification.new do |spec|
  spec.name          = "maxrmapi"
  spec.version       = Maxrmapi::VERSION
  spec.authors       = ["Robert Houser"]
  spec.email         = ["bobac@bobac.net"]

  spec.summary       = %q{Gem for interacting with MAX RM Data Extraction API.}
  spec.description   = %q{MAX RM is a management and monitoring tool for managed IT providers developed by LogicNow.}
  spec.homepage      = "https://github.com/bobac/maxrmapi.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
