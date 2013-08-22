$LOAD_PATH.unshift(File.expand_path("../../lib", __FILE__))

Dir[File.join(__dir__, 'support/**/*.rb')].each { |file| require file }

require 'paperclip/location'