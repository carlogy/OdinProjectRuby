require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'Caesar Cipher Tests' do

  describe 'Converts strings"' do

    it 'Converts What a string! to Bmfy f xywnsl!' do
    string = "What a string!"
    number = 5
    result = "Bmfy f xywnsl!"
    expect(caesar_cipher(string, number)).to eq(result)
    end

    it 'Converts empty string to empty string' do
      string = " "
      number = 5
      result=  " "
      expect(caesar_cipher(string, number)).to eq(result)
    end

    it 'Converts Hello to Ifmmp' do
      string = "Hello"
      number = 1
      result = "Ifmmp"
      expect(caesar_cipher(string, number)).to eq(result)
    end

    it 'Converts Loop to Loop' do
      string = "Loop"
      number = 26
      result = "Loop"
      expect(caesar_cipher(string, number)).to eq(result)
    end

    it 'Converts \"Learning Ruby is fun!\" to \"YlHyaA pAN yB P zM bA!\"' do
    string = "Learning Ruby is fun!"
    number = 7
    result = "Slhyupun Ybif pz mbu!"
    expect(caesar_cipher(string, number)).to eq(result)
    end
  end
end