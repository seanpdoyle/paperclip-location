# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "paperclip-location"
  spec.version       = "0.0.5"
  spec.authors       = ["Sean Doyle"]
  spec.email         = ["sean.p.doyle24@gmail.com"]
  spec.description   = %q{extract geolocation during Paperclip processing}
  spec.summary       = %q{extract geolocation EXIF data during Paperclip processing}
  spec.homepage      = "https://github.com/seanpdoyle/paperclip-location"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "rspec", "~> 2.14"

  spec.add_dependency "paperclip", "~> 3.5"
  spec.add_dependency "exifr", "~> 1.1"
end
