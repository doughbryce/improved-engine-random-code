require_relative '../analyzer.rb'

describe "Analyzer", :analyzer do
  it "Can find the sum of an array of numbers" do
    expect(Analyzer.sum([1, 2, 3])).to eq(6)
  end
  it "Can find the average of an array of numbers" do
    expect(Analyzer.average([1, 2, 3, 4, 5])).to eq(3.0)
  end
  it "Can find the range of and array of numbers" do
    expect(Analyzer.range([3, 4, 5, 7, 10, 5])).to eq(7)
  end
end