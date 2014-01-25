# Truther

Easy convertion to boolean from truther and falsy values. 

## Installation

Add this line to your application's Gemfile:

    gem 'truther'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install truther

## Usage

Use `#to_b` on `String`, `Integer`, `Float`, `nil`, `true` or `false`.

	'true'.to_b == true

	'no'.to_b == false

Check `Truther::TRUTHY_STRINGS` and `Truther::FALSY_STRINGS` to find out how strings are mapped to boolean.

An unrecognized string will raise `Truther::NeitherTrueNorFalseError` unless a default value is provided. In which case the default value will be returned.

	'maybe'.to_b(:i_dont_know) == :i_dont_know

## Contributing

1. Fork it ( http://github.com/stephanebisson/truther/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
