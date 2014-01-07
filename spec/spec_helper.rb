Dir[File.join(File.dirname(File.realpath(__FILE__)), 'support/**/*.rb')].each { |file| require file }

require 'paperclip/location'

Paperclip::Location::Processor.register! :location