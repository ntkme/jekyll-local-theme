# frozen_string_literal: true

require_relative 'local_theme/theme'
require_relative 'local_theme/version'

module Jekyll
  # The {LocalTheme} plugin for {Jekyll}.
  module LocalTheme
    module_function

    def init(site)
      path = site.config['local_theme']
      return unless path

      theme = Theme.new(Jekyll.sanitized_path(Jekyll.sanitized_path(site.source, '_themes'), path))
      site.theme = theme
      site.config['theme'] = theme.name

      Jekyll.logger.info 'Local theme:', theme.root

      site.send(:configure_include_paths)
      site.plugin_manager.require_theme_deps
    end
  end
end

Jekyll::Hooks.register :site, :after_init do |site|
  Jekyll::LocalTheme.init(site)
end
