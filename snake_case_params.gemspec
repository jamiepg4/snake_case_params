# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snake_case_params/version'

Gem::Specification.new do |spec|
  spec.name          = 'snake_case_params'
  spec.version       = SnakeCaseParams::VERSION
  spec.authors       = ['Practice Fusion']
  spec.email         = ['_consumerengineers@practicefusion.com']
  spec.summary       = %q{Make your params hash snake_case}
  spec.description   = %q{Do your users want to send camelCase parameters? Do you hate camelCase parameters? Use snake_case_params!}
  spec.homepage      = 'https://github.com/practicefusion/snake_case_params/'
  spec.license       = 'MIT'

  git_tracked_files = `git ls-files -z`.split("\x0")
  gem_ignored_files = `git ls-files -i -X .gemignore -z`.split("\x0")
  spec.files = git_tracked_files - gem_ignored_files

  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 3.2', '< 4.3'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'sqlite3', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'factory_girl_rails', '~> 4.0'
  spec.add_development_dependency 'rspec-rails', '~> 3.1'
  spec.add_development_dependency 'guard-rspec', '~> 4.3'
  spec.add_development_dependency 'pry-byebug', '~> 2.0'
  spec.add_development_dependency 'simplecov-rcov', '~> 0.2'
  spec.add_development_dependency 'simplecov-json', '~> 0.2'
end
