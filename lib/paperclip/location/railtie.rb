require 'paperclip/location/glue'

class Paperclip::Location::Railtie < Rails::Railtie
  initializer "paperclip-location.configure_rails_initialization" do
    Paperclip::Location::Processor.register!
  end
end