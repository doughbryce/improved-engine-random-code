require_relative 'spec_helper.rb'

describe Oven, :oven do
  let(:oven) do
    cookies1 = []
    cookies2 = []
    cookies3 = []
    15.times do
      cookies1 << ChocolateChipCookie.new
      cookies2 << ChocolateChipCookie.new
      cookies3 << ChocolateChipCookie.new
    end
    tray1 = Tray.new(cookies: cookies1)
    tray2 = Tray.new(cookies: cookies2)
    tray3 = Tray.new(cookies: cookies3)
    trays = []
    trays << tray1 << tray2 << tray3
    Oven.new(trays: trays)
  end
  it "Has a temp" do
    expect(oven.temp).to eq(0)
  end
  it "Has trays" do
    expect(oven.trays.count).to eq(3)
    expect(oven.trays.first.class).to eq(Tray)
  end
  it "Has a capacity of 4" do
    expect(Oven::CAPACITY).to eq(4)
  end
  it "If a new oven is initialized with no arguements, " + 
     "@trays is set to an empty array" do
    oven = Oven.new
    expect(oven.trays).to eq([])
  end
  it "If a new oven is initialized with too many trays, " +
     "it only fills its capacity and discards the rest of the trays" do
       trays = []
       6.times {trays << Tray.new}
       oven = Oven.new(trays: trays)
       expect(oven.trays.count).to eq(4)
     end
  it "Can pre-heat" do
    oven.pre_heat(375)
    expect(oven.temp).to eq(375)
  end
  it "Can turn-off" do
    oven.turn_off
    expect(oven.temp).to eq(0)
  end
  it "Can cook its cookies if pre_heated to the right temperature" do
    oven.pre_heat(390)
    5.times {oven.cook}
    cookie = oven.trays.first.cookies.first
    expect(cookie.minutes_cooked).to eq(5)
  end
  it "Does not cook cookies if temperature is too low" do
    oven.pre_heat(350)
    5.times {oven.cook}
    cookie = oven.trays.first.cookies.first
    expect(cookie.minutes_cooked).to eq(0)
  end
  it "Can empty its trays" do
    trays = oven.empty
    expect(trays.first.class).to eq(Tray)
    expect(trays.count).to eq(3)
  end
  it "After trays are emptied, the oven has no more trays" do
    oven.empty
    expect(oven.trays.count).to eq(0)
  end
end