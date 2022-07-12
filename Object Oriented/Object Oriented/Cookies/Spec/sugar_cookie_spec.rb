require_relative 'spec_helper.rb'

describe SugarCookie, :sugar do
  let(:cookie) {SugarCookie.new}
  it 'Gets the minutes cooked' do
    expect(cookie.minutes_cooked).to eq(0)
  end
  it 'Has a cook time' do
    type = SugarCookie::COOK_TIME.class
    expect(type).to be(Fixnum)
  end
  it "Cook time is 16 min and burn threshold is 3 min" do
    expect(SugarCookie::COOK_TIME).to eq(16)
    expect(SugarCookie::BURN_THRESHOLD).to eq(3)
  end
  it "Has a cook temperature of 375" do
    expect(SugarCookie::COOK_TEMP).to eq(375)
  end
  it 'Can be cooked' do
    5.times {cookie.cook}
    expect(cookie.minutes_cooked).to eq(5)
  end
  it 'Is doughy when cooked less than half of the cook time' do
    cook_time = SugarCookie::COOK_TIME / 2 - 1
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:doughy)
  end
  it "Is almost ready when cooked more than half of the cook time" do
    cook_time = (SugarCookie::COOK_TIME / 4) * 3
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:almost_ready)
  end
  it "Is ready when it reaches its cook time and a little bit after" do
    cook_time = SugarCookie::COOK_TIME + (SugarCookie::BURN_THRESHOLD / 2)
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:ready)
  end
  it "Is burned when it is cooked too much more than its cook time." do
    cook_time = SugarCookie::COOK_TIME + SugarCookie::BURN_THRESHOLD + 1
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:burned)
  end
end