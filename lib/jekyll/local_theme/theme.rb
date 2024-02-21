# frozen_string_literal: true

require 'bundler'

module Jekyll
  module LocalTheme
    # The local {Theme} on file system.
    class Theme < Jekyll::Theme
      JEKYLL_THEME_PREFIX = 'jekyll-theme-'

      private_constant :JEKYLL_THEME_PREFIX

      def initialize(name, root)
        name = name.delete_prefix(JEKYLL_THEME_PREFIX)
        gemspec = [
          File.expand_path("#{name}.gemspec", root),
          File.expand_path("#{JEKYLL_THEME_PREFIX}#{name}.gemspec", root)
        ].find { |file| File.exist?(file) }
        @gemspec = MockGemSpecification.new(root,
                                            gemspec ? Bundler.load_gemspec_uncached(gemspec).runtime_dependencies : [])
        super(name)
      end
    end

    private_constant :Theme
  end
end
