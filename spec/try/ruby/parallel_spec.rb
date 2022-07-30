# frozen_string_literal: true

require "try/ruby/parallel"

RSpec.describe "Arithmetic" do
  it "1 + 1 = 2" do
    expect(1 + 1).to eq 2
  end
end

RSpec.describe Try::Ruby do
  describe "array_map" do
    it "should call function for each element of array" do
      result = Try::Ruby.array_map(0..9) { |e| e + 1 }
      expect(result).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    end
  end

  describe "array_map_parallel" do
    it "should call function for each element of array" do
      result = Try::Ruby.array_map_parallel(0..9) { |e| e + 1 }
      expect(result).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    end
  end
end
