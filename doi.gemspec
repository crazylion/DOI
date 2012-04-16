# -*- encoding: utf-8 -*-
require File.expand_path('../lib/doi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["crazylion"]
  gem.email         = ["crazylion2@gmail.com"]
  gem.description   = %q{query doi by doi number}
  gem.summary       = %q{query doi by doi number}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "doi"
  gem.require_paths = ["lib"]
  gem.version       = Doi::VERSION
  gem.add_development_dependency 'faraday'
  gem.add_runtime_dependency 'faraday'
end
