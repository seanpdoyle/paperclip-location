$LOAD_PATH.unshift(File.expand_path("../../lib", __FILE__))

Dir[File.join(File.dirname(File.realpath(__FILE__)), 'support/**/*.rb')].each { |file| require file }

require 'paperclip/location'