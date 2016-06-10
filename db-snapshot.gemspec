# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'db/snapshot/version'

Gem::Specification.new do |spec|
  spec.name          = "db-snapshot"
  spec.version       = Db::Snapshot::VERSION
  spec.authors       = ["Ed Mckain"]
  spec.email         = ["mckain.default@gmail.com"]

  spec.summary       = %q{A tool to deal with different DB snapshots for Mongoid}
  spec.description   = %q{The goal is to have a gem to switch between data versions}
  spec.homepage      = "https://github.com/mcka1n/db-snapshot.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
