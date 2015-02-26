# snake\_case\_params

This is a tiny railtie that patches your ApplicationController and sets up
deep snake\_case conversion on the params hash.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'snake_case_params'
```

And then execute:

    $ bundle


## Usage

```
class FooController < ApplicationController
  # GET /foo?theThing=1234
  def index
    thing = params[:the_thing] # == 1234
  end
end
```

## Contributing

1. Fork it ( https://github.com/practicefusion.com/snake\_case\_params )
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Write new tests for your change
4. Write some awesome new feature to satisfy the tests
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin feature/my-new-feature`)
7. Create a new Pull Request and add some reviewers from recent commit history


## Running Tests

To run the unit tests, just execute `rake` or `rspec spec`
