#Make sure that this file and your tic-tac-toe file are in the 
#same directory. Then uncomment out line 5, but replace 
#"tic_tac_toe.rb" with the name of your file.

  #require_relative "tic_tac_toe.rb"

#To run these tests in the terminal, type:
#rspec -fd tic_tac_toe_spec.rb

describe "#check_for_winner" do
  context "When there is no winner" do
    it "Returns nil" do
      expect(check_for_winner([["O", "O", "X"],
                               ["X", "X", "O"],
                               ["O", "X", "O"]])).to eq(nil)
    end
  end
  context "Performs a horizontal check" do
    it "Finds a horizontal winner" do
      expect(check_for_winner([["O", "O", "X"],
                               ["X", "X", "X"],
                               ["O", "X", "O"]])).to eq(["X", "horizontally"])
    end
  end
  context "Performs a vertical check" do
    it "Finds a vertiacl winner" do
      expect(check_for_winner([["X", "O", "O"],
                               ["X", "X", "O"],
                               ["O", "X", "O"]])).to eq(["O", "vertically"])
    end
  end
  context "Performs a right-diagonal check" do
    it "Finds a diagonal winner" do
      expect(check_for_winner([["X", "O", "O"],
                               ["X", "X", "O"],
                               ["O", "X", "X"]])).to eq(["X", "diagonally"])
    end
  end
  context "Performs a left-diagonal check" do
    it "Finds a diagonal winner" do
      expect(check_for_winner([["X", "O", "O"],
                               ["X", "O", "O"],
                               ["O", "X", "X"]])).to eq(["O", "diagonally"])
    end
  end
end