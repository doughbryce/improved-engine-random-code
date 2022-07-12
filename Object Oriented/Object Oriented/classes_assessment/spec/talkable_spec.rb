require_relative '../talkable.rb'
require_relative '../candy_bag.rb'
require_relative '../restricted_candy_bag.rb'

describe "Talkable", :talkable do
  before(:each) do
    candies = []
    candies << Candy.new(weight: 40, calories: 150)
    candies << Candy.new(weight: 60, calories: 200)
    candies << Candy.new(weight: 50, calories: 150)
    @bag = CandyBag.new(owner: "Charles", candy: candies, max_pieces: 5, max_weight: 200)
    @restricted_bag = RestrictedCandyBag.new(owner: "Will", candy: candies, max_pieces: 5, max_weight: 200, max_calories: 1000)
  end
  it "Can say class name" do
    expect(@bag.say_class).to eq("Hi, my class is CandyBag")
    expect(@restricted_bag.say_class).to eq("Hi, my class is RestrictedCandyBag")
  end
  it "Can generate a random number between 1 and 10" do
    expect(1..10).to cover(@bag.rand_num)
  end
end