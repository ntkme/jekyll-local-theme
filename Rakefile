# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task default: %i[rubocop spec]

RSpec::Core::RakeTask.new

RuboCop::RakeTask.new do |task|
  task.formatters = ['progress']
  task.formatters << 'github' if ENV.key?('GITHUB_ACTIONS')
end
