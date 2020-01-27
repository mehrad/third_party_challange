module Proxy
  def self.resize(options)
    call_api(method: 'resize', options: options)  
  end

  private

  # This part intentionally left unrefactored
  def self.call_api(method:, options:)
    if method == 'resize'
      raise 'one of the url or file should exists' if options[:url].nil? && options[:file].nil? 
      raise 'widith and height should present on resize method' if options[:width].nil? | options[:height].nil?
    end
    :ok
  end
end
