# frozen_string_literal: true

require_relative 'lib/jekyll/local_theme/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-local-theme'
  spec.version       = Jekyll::LocalTheme::VERSION
  spec.authors       = ['なつき']
  spec.email         = ['i@ntk.me']
  spec.summary       = 'Jekyll plugin for building Jekyll sites with any local theme'
  spec.homepage      = 'https://github.com/ntkme/jekyll-local-theme'
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => "#{spec.homepage}/issues",
    'documentation_uri' => "https://rubydoc.info/gems/#{spec.name}/#{spec.version}",
    'source_code_uri' => "#{spec.homepage}/tree/v#{spec.version}",
    'funding_uri' => 'https://github.com/sponsors/ntkme',
    'rubygems_mfa_required' => 'true'
  }

  spec.files = Dir['lib/**/*.rb'] + ['LICENSE', 'README.md']

  spec.required_ruby_version = '>= 2.4.0'
  spec.required_rubygems_version = '>= 3.2.0'

  spec.add_dependency 'bundler', '>= 2.2.0'
  spec.add_dependency 'jekyll', '>= 4.0.0'
end
