require 'rspec'
require_relative 'semester_one_review.rb'

describe "word_sorter_each" do
  it "Counts the number of short, medium, and long words using an each loop" do
    names = ["Jen", "Scott", "Ben", "Samantha", "Jonathan"]
    result = {"short" => 2, "medium" => 1, "long" => 2}
    expect(word_sorter_each(names)).to eq(result)
  end
end
describe "word_sorter_while" do
  it "Counts the number of short, medium, and long words using a while loop." do
    names = ["Jen", "Scott", "Ben", "Samantha", "Jonathan"]
    result = {"short" => 2, "medium" => 1, "long" => 2}
    expect(word_sorter_while(names)).to eq(result)
  end
end
describe "score_converter_while" do
  it "Turns a percent score into a letter grade using a while loop" do
    expect(score_converter_while(93)).to eq("A")
    expect(score_converter_while(85)).to eq("B")
    expect(score_converter_while(70)).to eq("C")
    expect(score_converter_while(69)).to eq("D")
    expect(score_converter_while(59)).to eq("F")
  end
end
describe "score_converter_case" do
  it "Turns a percent score into a letter grade using a case statement." do
    expect(score_converter_case(93)).to eq("A")
    expect(score_converter_case(85)).to eq("B")
    expect(score_converter_case(70)).to eq("C")
    expect(score_converter_case(69)).to eq("D")
    expect(score_converter_case(59)).to eq("F")
  end
end