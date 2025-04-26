require 'spec_helper'
require_relative '../bubble_sort'

RSpec.describe 'Bubble Sort Tests' do

  describe 'Sorts array using bubble sort"' do

    it 'Sorts 4,3,78,2,0,2 ' do
    unorderedArr = [4,3,78,2,0,2]
    expected = [0,2,2,3,4,78]
    expect(bubble_sort(unorderedArr)).to eq(expected)
    end

    it 'Returns single element if arr has 1 elements' do
      arr = [1]
      expected = [1]
      expect(bubble_sort(arr)).to eq(expected)
    end

    it 'Returns [] if empty arr' do
      arr = []
      expected = []
      expect(bubble_sort(arr)).to eq(expected)
    end

    it 'Sorts fully desc ord array' do
      arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1,0]
      expected = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      expect(bubble_sort(arr)).to eq(expected)
    end

  end
end
