# frozen_string_literal: true

require_relative "parallel/version"

require "parallel"

Parallel.each(1..100000, in_processes: 1000) do |i|
  puts i
end

Parallel.each(1..100000, in_threads: 1000) do |i|
  puts i
end
