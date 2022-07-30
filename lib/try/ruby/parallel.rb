# frozen_string_literal: true

require "parallel"

module Try
  module Ruby
    def array_map(array, &callback)
      array.map { |e| callback.call e }
    end

    def array_map_parallel(array, &callback)
      Parallel.map(array) { |e| callback.call e }
    end

    module_function :array_map
    module_function :array_map_parallel
  end
end
