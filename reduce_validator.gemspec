# coding: utf-8
require_relative "lib/reduce_validator/version"

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

rails_version = ENV['RAILS_VERSION'] || 'default'

rails_version =
  case rails_version
  when 'default'
    '>= 7.0.0'
  else
    "~> #{ENV['RAILS_VERSION']}"
  end

Gem::Specification.new do |spec|
  spec.name          = 'reduce_validator'
  spec.version       = ReduceValidator::VERSION
  spec.authors       = ['Christoph Lupprich']
  spec.email         = ['christoph@luppri.ch']

  spec.summary       = 'A validator for Rails which truncates validation error messages.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/clupprich/reduce_validator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel', rails_version
  spec.add_dependency 'activesupport', rails_version

  spec.add_development_dependency 'bundler', '~> 2'
  spec.add_development_dependency 'rake', '~> 13'
  spec.add_development_dependency 'rspec', '>= 0'
end
