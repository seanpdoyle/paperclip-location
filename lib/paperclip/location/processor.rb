require 'exifr'
require 'paperclip'

module Paperclip::Location
  class Processor < Paperclip::Processor
    delegate :instance, to: :attachment, allow_nil: true
    delegate :gps, to: :exif, allow_nil: true

    def self.register!(name = :location)
      Paperclip.configure do |c|
        c.register_processor name, self
      end
    end

    def make
      if can_process?
        instance.lat = gps.latitude
        instance.lng = gps.longitude
      end
      file
    end

    private

    def location_locked?
      instance.respond_to?(:location_locked?) && instance.location_locked?
    end

    def can_process?
      !location_locked? && gps.present? && instance.present? && exif.present?
    end

    def exif
      @exif ||= EXIFR::JPEG.new(file.path)
    rescue EXIFR::MalformedJPEG => ex
      nil
    end
  end
end
