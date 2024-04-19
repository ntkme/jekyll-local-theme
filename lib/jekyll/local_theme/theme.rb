# frozen_string_literal: true

require 'bundler'

module Jekyll
  module LocalTheme
    # The local {Theme} on file system.
    class Theme < Jekyll::Theme
      def initialize(root)
        gemspec = Gem::Util.glob_files_in_dir(Bundler::Source::Path::DEFAULT_GLOB, root)
                           .min_by { |p| -p.split(File::SEPARATOR).size }

        if gemspec
          @gemspec = Bundler.load_gemspec_uncached(gemspec)
          @gemspec.full_gem_path = File.dirname(gemspec)
        else
          @gemspec = Gem::Specification.new(File.basename(root))
          @gemspec.full_gem_path = root
        end

        super(@gemspec.name)
      end
    end

    private_constant :Theme
  end
end
