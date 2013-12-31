require 'paperclip'
require 'paperclip/location/processor'

module Paperclip
  module Location
    class Railtie < Rails::Railtie
      initializer "paperclip-location.configure_rails_initialization" do
        Paperclip.configure do |c|
          c.register_processor :location, Paperclip::Location::Processor
        end
      end
    end
  end
end