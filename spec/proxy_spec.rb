require 'proxy'
require 'error'

RSpec.describe Proxy, '#api' do
  context '#resize' do
    it 'returns ok on valid options' do
      expect(Proxy.resize(width: 2123, height: 1232, url: 123)).to  eq(:ok)
    end

    it 'raise error without url and file' do
      expect { Proxy.resize(width: 2123, height: 1232) }.to raise_error(InCompleteOptionError)
    end

    it 'raise error without height' do
      expect { Proxy.resize(width: 1232, url: 123) }.to raise_error(InCompleteOptionError)
    end

    it 'raise error without width' do
      expect { Proxy.resize(height: 1232, url: 123) }.to raise_error(InCompleteOptionError)
    end

    it 'raise error without width and height' do
      expect { Proxy.resize(url: 123) }.to raise_error(InCompleteOptionError)
    end

  end

  context '#crop' do
    it 'returns ok on valid options' do
      expect(Proxy.crop(width: 2123, height: 1232, url: 123)).to  eq(:ok)
    end

    it 'raise error without url and file' do
      expect { Proxy.crop(width: 2123, height: 1232) }.to raise_error(InCompleteOptionError)
    end

    it 'raise error without width and height' do
      expect { Proxy.crop(width: 1232, url: 123) }.to raise_error(InCompleteOptionError)
    end

    it 'returns ok only with height' do
      expect { Proxy.crop(height: 1232, url: 123) }.to raise_error(InCompleteOptionError)
    end

    it 'returns ok only with width' do
      expect { Proxy.crop(width: 2123, url:1321)}
    end
  end
end
