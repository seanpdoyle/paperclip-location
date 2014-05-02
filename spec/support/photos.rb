require 'ostruct'

module Photos
  ROOT = File.join(File.dirname(File.realpath(__FILE__)), '../', 'photos')
  WITH_EXIF = OpenStruct.new(
    path: File.join(ROOT, 'with-exif.jpg'),
    lat: 39.99783333333334,
    lng: -75.2495
  ).freeze

  WITHOUT_EXIF = OpenStruct.new(
    path: File.join(ROOT, 'without-exif.jpg'),
    lat: nil,
    lng: nil
  ).freeze

  INVALID = OpenStruct.new(
    path: File.join(ROOT, 'not-a-jpg.jpg'),
    lat: nil,
    lng: nil
  )
end
