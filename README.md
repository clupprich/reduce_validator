[![Build Status](https://travis-ci.org/clupprich/reduce_validator.svg?branch=master)](https://travis-ci.org/clupprich/reduce_validator)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reduce_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reduce_validator

## Usage

Add the `ReduceValidator` to the end of your `validates` statement like so:

```ruby
validates :name, presence: true, length: { minimum: 5 }, reduce: true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `reduce_validator.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/clupprich/reduce_validator.

## Credits

The original idea for this validator came from an answer in this [Stack Overflow thread](http://stackoverflow.com/questions/2569401/rails-validation-error-messages-displaying-only-one-error-message-per-field).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
