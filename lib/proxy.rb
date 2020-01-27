require 'error'

module Proxy
  def self.resize(options)
    api_call(method: 'resize', options: options)  
  end

  private

  # This part intentionally left unrefactored
  def self.api_call(method:, options:)
    if method == 'resize'
      raise 'one of the url or file should exists' if options[:url].nil? && options[:file].nil? 
      raise 'widith and height should present on resize method' if options[:width].nil? | options[:height].nil?
    end
    :ok
  end
end
