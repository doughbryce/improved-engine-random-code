require_relative '../restricted_candy_bag.rb'

describe RestrictedCandyBag, :restricted_candy_bag do
  before(:each) do
    candies = []
    candies << Candy.new(weight: 40, calories: 150)
    candies << Candy.new(weight: 60, calories: 200)
    candies << Candy.new(weight: 50, calories: 150)
    @bag = RestrictedCandyBag.new(owner: "Charles", candy: candies, max_pieces: 5, max_weight: 200, max_calories: 1000)
    @empty_bag = CandyBag.new(owner: "Vanessa")
  end
  context "Inherits from CandyBag" do
    context "Attributes" do
      it "Has an owner" do
        expect(@bag.owner).to eq("Charles")
      end
      it "Owner is readable not writable" do
        expect{@bag.owner = "Will"}.to raise_error(NoMethodError)
      end
      it "Has an candy" do
        expect(@bag.candy.count).to eq(3)
      end
      it "Candy is readable but not writable" do
        expect{@bag.candy = [Candy.new(weight: 40, calories: 150)]}.to raise_error(NoMethodError)
      end
      it "Has max_pieces" do  
        expect(@bag.max_pieces).to eq(5)
      end
      it "max_pieces is both readable and writable" do
        @bag.max_pieces = 15
        expect(@bag.max_pieces).to eq(15)
      end
      it "Has max_weight" do
        expect(@bag.max_weight).to eq(200)
      end
      it "max_weight is both readable and writable" do
        @bag.max_weight = 250
        expect(@bag.max_weight).to eq(250)
      end
    end
    context "Methods" do
      it "Can tell how many pieces of candy it has" do
        expect(@bag.current_piece_count).to eq(3)
      end
      it "Can tell the combined weight of the candy it contains" do
        expect(@bag.current_weight).to eq(40 + 60 + 50)
      end
      it "Returns zero pieces when there is no candy in the bag" do
        expect(@empty_bag.current_piece_count).to eq(0)
      end
      it "Returns weight is zero when there is no candy in the bag" do
        expect(@empty_bag.current_weight).to eq(0)
      end
      it "Can add a piece of candy" do
        @bag.add_candy(Candy.new(weight: 25, calories: 150))
        expect(@bag.current_piece_count).to eq(4)
      end
      it "Only adds candy if there is enough space allowed (under max_pieces)" do
        6.times {@bag.add_candy(Candy.new(weight: 1, calories: 100))}
        expect(@bag.current_piece_count).to eq(5)
      end 
      it "Only adds candy if there is enough weight allowed (under max_weight)" do
        @bag.add_candy(Candy.new(weight: 500, calories: 100))
        expect(@bag.current_piece_count).to eq(3)
      end
    end
  end
  context "Adds new behavior" do
    it "Has a max_calories attribute that is readable" do
      expect(@bag.max_calories).to eq(1000)
    end
    it "Can tell how many calories are in the bag" do
      expect(@bag.total_calories).to eq(500)
    end
    it "Only adds candy if the max_calories value is not exceeded" do
      @bag.add_candy(Candy.new(weight: 500, calories: 900))
      expect(@bag.current_piece_count).to eq(3)
    end
  end
end