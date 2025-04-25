require 'spec_helper'
require_relative '../stock_picker'

RSpec.describe 'Stock Picker tests' do

  describe 'Returns buy/sell for provided stock array' do

    it 'For 17, 3, 6, 9, 15, 8, 6, 1, 10' do
      prices = [17,3,6,9,15,8,6,1,10]
      result = [1,4]
      expect(stock_picker(prices)).to eq(result)
    end

    it 'For []' do
      prices = []
      result = []
      expect(stock_picker(prices)).to eq(result)
    end

    it 'For [1]' do
      prices = [1]
      result = []
      expect(stock_picker(prices)).to eq(result)
    end

  end

end