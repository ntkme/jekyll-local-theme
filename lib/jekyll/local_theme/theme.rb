# frozen_string_literal: true

require 'bundler'

module Jekyll
  module LocalTheme
    # The local {Theme} on file system.
    class Theme < Jekyll::Theme
      def initialize(name, root)
        gemspec = Gem::Util.glob_files_in_dir(::Bundler::Source::Path::DEFAULT_GLOB, root)
                           .min_by { |p| -p.split(File::SEPARATOR).size }

        if gemspec
          @gemspec = Bundler.load_gemspec_uncached(gemspec)
          @gemspec.full_gem_path = Pathname.new(gemspec).dirname.to_s
        else
          @gemspec = Gem::Specification.new
          @gemspec.full_gem_path = root
        end

        super(name)
      end
    end

    private_constant :Theme
  end
end
