require 'exifr'
require 'paperclip'

module Paperclip::Location
  class Processor < Paperclip::Processor
    def self.register!(name = :location)
      Paperclip.configure do |c|
        c.register_processor name, Paperclip::Location::Processor
      end
    end

    delegate :location_locked?, to: :instance, allow_nil: true
    delegate :instance, to: :attachment, allow_nil: true
    delegate :gps, to: :exif

    def make
      if can_process?
        instance.lat = gps.latitude
        instance.lng = gps.longitude
      end
      file
    end

    private

    def can_process?
      !location_locked? && gps.present? && instance.present?
    end

    def exif
      @exif ||= EXIFR::JPEG.new(file.path)
    end
  end
end