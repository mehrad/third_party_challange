require 'proxy'

RSpec.describe Proxy, "#api" do
  context "#resize" do
    it "return ok on valid options" do
      expect(Proxy.resize({ width: 12123, height: 1232, url: 123 })).to  eq(:ok)
    end
  end
end


