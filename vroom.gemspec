# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'vroom/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Aren Patel"]
  gem.email         = ["aren55555@users.noreply.github.com"]
  gem.description   = %q{A Ruby interface for the Dash.by Chassis API.}
  gem.summary       = %q{A Ruby interface for the Dash.by Chassis API.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'vroom'
  gem.require_paths = ["lib"]
  gem.version       = Vroom::VERSION

  gem.add_runtime_dependency('httparty')
end