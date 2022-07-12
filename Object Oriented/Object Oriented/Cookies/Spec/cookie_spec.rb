require_relative 'spec_helper.rb'

describe Cookie, :cookie do
  let(:cookie) {Cookie.new}
  it 'Gets the minutes cooked' do
    expect(cookie.minutes_cooked).to eq(0)
  end
  it 'Has a cook time' do
    type = Cookie::COOK_TIME.class
    expect(type).to be(Fixnum)
  end
  it "Cook time is 10 min and burn threshold is 2 min" do
    expect(Cookie::COOK_TIME).to eq(10)
    expect(Cookie::BURN_THRESHOLD).to eq(2)
  end
  it "Has a cook temperature of 400" do
    expect(Cookie::COOK_TEMP).to eq(400)
  end
  it 'Can be cooked' do
    5.times {cookie.cook}  
    expect(cookie.minutes_cooked).to eq(5)
  end
  it 'Is doughy when cooked half of the cook time' do
    cook_time = Cookie::COOK_TIME / 2
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:doughy)
  end
  it "Is almost ready when cooked more than half of the cook time" do
    cook_time = (Cookie::COOK_TIME / 4) * 3
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:almost_ready)
  end
  it "Is ready when it reaches its cook time and a little bit after" do
    cook_time = Cookie::COOK_TIME + (Cookie::BURN_THRESHOLD / 2)
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:ready)
  end
  it "Is burned when it is cooked too much more than its cook time." do
    cook_time = Cookie::COOK_TIME + Cookie::BURN_THRESHOLD + 1
    cook_time.times {cookie.cook}
    expect(cookie.state).to eq(:burned)
  end
end