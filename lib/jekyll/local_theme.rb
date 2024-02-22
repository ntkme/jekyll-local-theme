# frozen_string_literal: true

require_relative 'local_theme/mock_gem_specification'
require_relative 'local_theme/theme'
require_relative 'local_theme/version'

module Jekyll
  # The {LocalTheme} plugin for {Jekyll}.
  module LocalTheme
    module_function

    def init(site)
      name = site.config['local_theme']
      return unless name

      site.config['theme'] = name
      site.theme = Theme.new(name, Jekyll.sanitized_path(Jekyll.sanitized_path(site.source, '_themes'), name))

      Jekyll.logger.info 'Local theme:', site.theme.root

      site.send(:configure_include_paths)
      site.plugin_manager.require_theme_deps
    end
  end
end

Jekyll::Hooks.register :site, :after_init do |site|
  Jekyll::LocalTheme.init(site)
end
