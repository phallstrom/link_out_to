# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'link_out_to_helper/version'

Gem::Specification.new do |gem|
  gem.name          = "link_out_to_helper"
  gem.version       = LinkOutToHelper::VERSION
  gem.authors       = ["Philip Hallstrom"]
  gem.email         = ["philip@pjkh.com"]
  gem.description   = %q{link_out_to automatically sets a :target of _blank to your links.}
  gem.summary       = %q{link_out_to automatically sets a :target of _blank to your links.}
  gem.homepage      = "https://github.com/phallstrom/link_out_to"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
