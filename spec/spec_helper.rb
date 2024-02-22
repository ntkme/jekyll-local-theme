# frozen_string_literal: true

RSpec.configure do |config|
  config.color_mode = :on if ENV.key?('GITHUB_ACTIONS')
  config.formatter = :documentation
end
