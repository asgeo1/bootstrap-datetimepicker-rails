# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstrap-datetimepicker-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Adam George"]
  gem.email         = ["github@adamgeorge.com"]
  gem.description   = %q{A datetime picker for Twitter Bootstrap}
  gem.homepage      = "https://github.com/asgeo1/bootstrap-datetimepicker-rails"
  gem.summary       = gem.description

  gem.name          = "bootstrap-datetimepicker-rails"
  gem.require_paths = ["lib"]
  gem.files         = `git ls-files`.split("\n")
  gem.version       = BootstrapDatetimepickerRails::Rails::VERSION

  gem.add_dependency "railties", ">= 3.0"
  gem.add_development_dependency "bundler", ">= 1.0"
  gem.add_development_dependency "rake"
end
