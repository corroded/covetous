# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'covetous/version'

Gem::Specification.new do |gem|
  gem.name          = "covetous"
  gem.version       = Covetous::VERSION
  gem.authors       = ["Eumir Gaspar"]
  gem.email         = ["eumir@aelogica.com"]
  gem.description   = %q{A Ruby wrapper for the Diablo 3 Web API}
  gem.summary       = %q{A Ruby wrapper for the Diablo 3 Web API}
  gem.homepage      = "http://corroded.github.com/covetous"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]


  gem.add_runtime_dependency 'httparty'

  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'vcr'
end
