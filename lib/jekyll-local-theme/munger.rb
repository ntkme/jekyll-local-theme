# frozen_string_literal: true

module Jekyll
  module LocalTheme
    class Munger < Jekyll::RemoteTheme::Munger
      def munge!
        return unless raw_theme

        Jekyll.logger.info LOG_KEY, "Using theme #{theme.root}"
        unless munged?
          configure_theme
        end

        theme
      end

      private

      def munged?
        site.theme&.is_a?(Jekyll::LocalTheme::Theme)
      end

      def theme
        @theme ||= Theme.new(raw_theme, Jekyll.sanitized_path(Jekyll.sanitized_path(site.source, "_themes"), raw_theme))
      end

      def raw_theme
        config[CONFIG_KEY]
      end
    end
  end
end
