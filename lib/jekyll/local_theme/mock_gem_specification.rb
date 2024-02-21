# frozen_string_literal: true

module Jekyll
  module LocalTheme
    # The mock for {Gem::Specification}.
    class MockGemSpecification
      attr_reader :full_gem_path, :runtime_dependencies

      def initialize(full_gem_path, runtime_dependencies)
        @full_gem_path = full_gem_path
        @runtime_dependencies = runtime_dependencies
      end
    end
  end
end
