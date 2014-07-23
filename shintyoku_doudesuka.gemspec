# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shintyoku_doudesuka/version'

Gem::Specification.new do |spec|
  spec.name          = "shintyoku_doudesuka"
  spec.version       = ShintyokuDoudesuka::VERSION
  spec.authors       = ["n-kats"]
  spec.email         = ["n-kats19890214@hotmail.co.jp"]
  spec.summary       = %q{The evil phrase "shintyoku doudesuka", which brought fear to Japan !}
  spec.description   = %q{The evil phrase "shintyoku doudesuka", which brought fear to Japan !}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
