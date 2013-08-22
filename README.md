# Location Paperclip::Processor

[![Build Status](https://travis-ci.org/seanpdoyle/chief.png)](https://travis-ci.org/seanpdoyle/chief)

Extracts GeoLocation data from an image during Paperclip processing
and attaches it to the associated model.

## Installation

Add this line to your application's Gemfile:
```ruby
  gem 'location-paperclip-processor', github: 'seanpdoyle/location-paperclip-processor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install location-paperclip-processor

## Usage

Use it like any other `Paperclip::Processor`

```ruby
class PlaceOfInterest < ActiveRecord::Base

  has_attached_file :photo, styles: { large: '600x600#' },
                    processors: [:thumbnail, :location]

end
```

The processor expects that the model in question has the following:

* `lat` - a float representing the latitude
* `lng` - a float representing the longitude

These field names will be customizable in future versions

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
