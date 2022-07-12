require_relative 'spec_helper.rb'

describe Tray, :tray do
  let(:tray) do
    cookies = []
    15.times {cookies << Cookie.new}
    Tray.new(cookies: cookies)
  end
  it "Has a capacity" do
    expect(Tray::CAPACITY).to eq(20)
  end
  it "Has cookies" do
    cookies = tray.cookies
    expect(cookies.first.class).to eq(Cookie)
    expect(cookies.count).to eq(15)
  end
  it "Can add cookies" do
    tray.add_cookie(Cookie.new)
    expect(tray.cookies.count).to eq(16)
  end
  it "Cannot add more cookies than the capacity allows" do
    10.times {tray.add_cookie(Cookie.new)}
    expect(tray.cookies.count).to eq(20)
    expect(tray.add_cookie(Cookie.new)).to eq(false)
  end
  it "If a new tray is created with more cookies than " +
     "allowed, the tray will only add cookies that fit on the try." do
        cookies = []
        25.times {cookies << Cookie.new}
        new_tray = Tray.new(cookies: cookies)
        expect(new_tray.cookies.count).to eq(20)
  end
  it "If a new tray is created with no cookies, @cookies is set to an empty array." do
    tray = Tray.new
    expect(tray.cookies).to eq([])
  end
  it "Returns all of the cookies when the tray is emptied" do
    cookies = tray.empty
    expect(cookies.count).to eq(15)
    expect(cookies.first.class).to eq(Cookie)
  end
  it "Has no more cookies on the tray after tray is emptied" do
    tray.empty
    expect(tray.cookies.count).to eq(0)
  end
end