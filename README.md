# Rinterface

Provide common interface like Java one.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rinterface'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rinterface

## Usage

```ruby
class HumanInterface < Rinterface::Base
  abstract :say, :jump
end

class Hoge
  implements HumanInterface
end

#=> raise NotImplementedError

class Hoge
  implements HumanInterface

  def say
    puts "Hello"
  end

  def jump
    puts "World"
  end
end

#=> No error
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/syguer/rinterface.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

