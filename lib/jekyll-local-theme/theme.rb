# frozen_string_literal: true

module Jekyll
  module LocalTheme
    class Theme < Jekyll::Theme
      def initialize(name, root)
        @root = root
        super(name)
      end

      private

      def gemspec
        @gemspec ||= MockGemspec.new(self)
      end
    end
  end
end
