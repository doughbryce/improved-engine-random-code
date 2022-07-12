require_relative '../candy.rb'

describe Candy, :candy do
  let(:candy) { Candy.new({weight: 5, calories: 100}) }
  it "Has a weight" do
    expect(candy.weight).to eq(5)
  end
  it "Has a calorie count" do
    expect(candy.calories).to eq(100)
  end
  it "Weight is only readable, not writable" do
    expect{candy.weight = 10}.to raise_error(NoMethodError)
  end
  it "Calories is only readable, not writable" do
    expect{candy.calories = 200}.to raise_error(NoMethodError)
  end
end