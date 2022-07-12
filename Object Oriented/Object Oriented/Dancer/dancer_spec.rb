require_relative "../dancer.rb"

describe "Dancer" do
  let(:dancer) {Dancer.new("Brae", 17)}
  context "Name" do  
    it "Has a readable name" do
      expect(dancer.name).to eq("Brae")
    end
    it "Has a writable name" do
      dancer.name = "Sylvia"
      expect(dancer.name).to eq("Sylvia")
    end
  end
  context "Age" do
    it "Has a readable age" do
      expect(dancer.age).to eq(17)
    end
    it "Has a writable age" do
      dancer.age = 23
      expect(dancer.age).to eq (23)
    end
  end
  context "Studio" do
    it "Has a readable studio" do
      expect(dancer.studio).to eq("Paly Dance")
    end
  end
  context "Dancer Info (to_s)" do
    it "Dancer information is displayed when instance is printed" do
      expect{print dancer}.to output("Name: Brae\nAge: 17").to_stdout
    end
  end
  context "Sweet Dance Moves" do
    it "Can dab all day" do
      expect(dancer.dab(5)).to eq("dab*dab*dab*dab*dab")
    end
    it "Can twist and shout" do
      expect(dancer.twist_and_shout("yeah")).to eq("*twirl* yeah *twirl*")
    end
  end
end




