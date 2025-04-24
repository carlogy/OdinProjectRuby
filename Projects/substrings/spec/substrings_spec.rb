require 'spec_helper'
require_relative '../substrings.rb'

RSpec.describe 'Substring tests' do

  it 'Check below' do
    string = "Below"
    string_array = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    result = {"below" => 1, "low" => 1}
    expect(substrings(string, string_array)).to eq(result)
  end

  it 'Checks \"Howdy partner, sit down! How\'s it going?\"' do
    string = "Howdy partner, sit down! How's it going?"
    string_array = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    result = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    expect(substrings(string, string_array)).to eq(result)
  end

  it 'Checks if " "  ' do
    string = " "
    string_array = ["Hello", "Hi", "Ruby"]
    result = {}
    expect(substrings(string, string_array)).to eq(result)
  end

end