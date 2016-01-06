# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

rails_version = ENV['RAILS_VERSION'] || 'default'

rails_version =
  case rails_version
  when 'master'
    { github: 'rails/rails' }
  when 'default'
    '>= 4.2.5'
  else
    "~> #{ENV['RAILS_VERSION']}"
  end

Gem::Specification.new do |spec|
  spec.name          = 'reduce_validator'
  spec.version       = '0.1.0'
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

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '>= 0'
end
