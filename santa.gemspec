# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'santa/version'

Gem::Specification.new do |spec|
  spec.name          = "santa"
  spec.version       = Santa::VERSION
  spec.authors       = ["Mwaki Magotswi"]
  spec.email         = ["magotswi@gmail.com"]
  spec.description   = %q{Easy gifting amongst friends}
  spec.summary       = %q{A Simple gem to generate Secret Santa allocations}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
end
