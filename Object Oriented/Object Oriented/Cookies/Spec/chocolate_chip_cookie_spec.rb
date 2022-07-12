require_relative 'spec_helper.rb'

describe ChocolateChipCookie, :chocolate_chip do
  let(:cookie) {ChocolateChipCookie.new}
  it 'Gets the minutes cooked' do
    expect(cookie.minutes_cooked).to eq(0)
  end
  it 'Has a cook time' do
    type = ChocolateChipCookie::COOK_TIME.class
    expect(type).to be(Fixnum)
  end
  it "Cook time is 15 min and burn threshold is 3 min" do
    expect(ChocolateChipCookie::COOK_TIME).to eq(15)
    expect(ChocolateChipCookie::BURN_THRESHOLD).to eq(3)
  end
  it "Has a cook temperature of 390" do
    expect(ChocolateChipCookie::COOK_TEMP).to eq(390)
  end
  it 'Can be cooked' do
    5.times {cookie.cook}
    expect(cookie.minutes_cooked).to eq(5)
  end
  it 'Is doughy when cooked less than half of the cook time' do
    cook_time = ChocolateChipCookie::COOK_TIME / 2 - 1
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:doughy)
  end
  it "Is almost ready when cooked more than half of the cook time" do
    cook_time = (ChocolateChipCookie::COOK_TIME / 4) * 3
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:almost_ready)
  end
  it "Is ready when it reaches its cook time and a little bit after" do
    cook_time = ChocolateChipCookie::COOK_TIME + (ChocolateChipCookie::BURN_THRESHOLD / 2)
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:ready)
  end
  it "Is burned when it is cooked too much more than its cook time." do
    cook_time = ChocolateChipCookie::COOK_TIME + ChocolateChipCookie::BURN_THRESHOLD + 1
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:burned)
  end
end