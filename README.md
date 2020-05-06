# Jekyll Local Theme

Jekyll plugin for building Jekyll sites with any local theme

## Usage

1. Add the following to your Gemfile

    ``` ruby
    gem "jekyll-local-theme"
    ```

    and run `bundle install` to install the plugin

2. Add the following to your site's `_config.yml` to activate the plugin

    ``` yml
    plugins:
      - jekyll-local-theme
    ```

3. Add themes to your site's `_themes` directory

    ``` sh
    git submodule add https://github.com/jekyll/minima.git _themes/minima
    ```

    Note: You can just copy files without using `git submodule`

4. Add the following to your site's `_config.yml` to choose your theme

    ``` yml
    local_theme: minima
    ```