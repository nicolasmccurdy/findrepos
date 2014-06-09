# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'findrepos/version'

Gem::Specification.new do |spec|
  spec.name          = 'findrepos'
  spec.version       = Findrepos::VERSION
  spec.authors       = ['Nicolas McCurdy']
  spec.email         = ['thenickperson@gmail.com']
  spec.summary       = 'A tool for finding git repositories locally.'
  spec.homepage      = 'https://github.com/nicolasmccurdy/findrepos'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '~> 0.19'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
