# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'double_submit_protection/version'

Gem::Specification.new do |gem|
  gem.name          = 'double_submit_protection'
  gem.version       = DoubleSubmitProtection::VERSION
  gem.authors       = %w(willnet)
  gem.email         = %w(netwillnet@gmail.com)
  gem.description   = %q{Protect double submit}
  gem.summary       = %q{Protect double submit}
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w(lib)
end
