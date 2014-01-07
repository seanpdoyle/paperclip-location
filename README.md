# Location Paperclip::Processor

[![Build Status](https://travis-ci.org/seanpdoyle/paperclip-location.png)](https://travis-ci.org/seanpdoyle/paperclip-location)

Extracts GeoLocation data from an image during Paperclip processing
and attaches it to the associated model.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paperclip-location'
```

And then execute:

```console
$ bundle
```

Or install it yourself as:

```console
$ gem install paperclip-location
```

## Usage

Use it like any other `Paperclip::Processor`

```ruby
class Place < ActiveRecord::Base

  has_attached_file :photo, styles: { large: '600x600#' },
                    processors: [:thumbnail, :location]

end
```

The processor expects that the model in question has the following:

* `location_locked` - a boolean flag to determine if the location has been manually overridden
* `lat` - a decimal representing the latitude
* `lng` - a decimal representing the longitude

If you don't have either, run a migration to add them

```ruby
class AddLocationToPlaces < ActiveRecord::Migration
  def self.change
    add_column :places, :location_locked, :boolean, default: false, null: false
    add_column :places, :lat, :decimal, precision: 10, scale: 15
    add_column :places, :lng, :decimal, precision: 10, scale: 15
  end
end
```

These field names will be customizable in future versions

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
