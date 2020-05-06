# frozen_string_literal: true

require "jekyll"
require "jekyll-remote-theme"

$LOAD_PATH.unshift(File.dirname(__FILE__))

module Jekyll
  module LocalTheme
    autoload :MockGemspec, "jekyll-local-theme/mock_gemspec"
    autoload :Munger,      "jekyll-local-theme/munger"
    autoload :Theme,       "jekyll-local-theme/theme"
    autoload :VERSION,     "jekyll-local-theme/version"

    CONFIG_KEY  = "local_theme"
    LOG_KEY     = "Local Theme:"

    def self.init(site)
      Munger.new(site).munge!
    end
  end
end

Jekyll::Hooks.register :site, :after_reset do |site|
  Jekyll::LocalTheme.init(site)
end
