# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("lib", __dir__)
require "jekyll-local-theme/version"

Gem::Specification.new do |s|
  s.name          = "jekyll-local-theme"
  s.version       = Jekyll::LocalTheme::VERSION
  s.authors       = ["なつき"]
  s.email         = ["i@ntk.me"]
  s.homepage      = "https://github.com/ntkme/jekyll-local-theme"
  s.summary       = "Jekyll plugin for building Jekyll sites with any local theme"

  s.files         = `git ls-files lib`.split("\n")
  s.require_paths = ["lib"]
  s.license       = "MIT"

  s.add_dependency "jekyll-remote-theme", "~> 0"

  s.required_ruby_version = ">= 2.3.0"
end
