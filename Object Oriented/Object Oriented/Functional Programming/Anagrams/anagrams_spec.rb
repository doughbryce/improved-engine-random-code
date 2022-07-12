#To run this file type:
#   rspec -fd anagrams_spec.rb

require_relative "anagrams.rb"

describe "anagrams?" do
  it "Returns true or false depending on whether or not two specified words are anagrams" do
    expect(anagrams?("melon", "lemon")).to eq(true)
    expect(anagrams?("melon", "fat pig")).to eq(false)
  end
end
describe "find_anagrams" do
  it "Returns an array of words that are anagrams of specified word" do
    result = find_anagrams('melon', ['melon', 'lemon', 'apple'])
    expect(result).to eq(['melon', 'lemon'])
  end
end