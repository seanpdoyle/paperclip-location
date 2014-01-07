module Paperclip
  module Location
  end
end

require 'paperclip/location/processor'

if defined?(Rails)
  require 'paperclip/location/railtie'
end
