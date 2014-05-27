# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'suite_rest/version'

Gem::Specification.new do |gem|
  gem.name          = "suite_rest"
  gem.version       = SuiteRest::VERSION
  gem.authors       = ["Ben DiFrancesco"]
  gem.email         = ["ben.difrancesco@gmail.com"]
  gem.description   = "Allows easy interaction with NetSuite RESTlets"
  gem.summary       = ""
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'json', '~> 1.8.1'
  
  gem.add_development_dependency 'rspec', '~> 2.10'
  gem.add_development_dependency 'pry-debugger'
end
