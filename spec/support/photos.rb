require 'ostruct'

module Photos
  WITH_EXIF = OpenStruct.new(
    path: File.join(__dir__, '../', 'photos', 'with-exif.jpg'),
    lat: 39.99783333333334,
    lng: -75.2495
  ).freeze

  WITHOUT_EXIF = OpenStruct.new(
    path: File.join(__dir__, '../', 'photos', 'without-exif.jpg'),
    lat: nil,
    lng: nil
  ).freeze
end