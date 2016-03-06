# gen-env

More than often, a typical java project requires you to manage multiple properties or env files across different environments. For example, local.env, sit.env, qa.env etc etc. And there are multiple problems managing these sort of environment files.

#### Problems with multiple .properties file

1. No better mechanism of logically grouping multiple entries in .env file, other than developer's discipline. For example, order of individual configurations for database, load-balancer etc. can vary a lot from one environment to other.
2. It becomes difficult and cumbersome to find a single entry in all properties file and change it without juggling with your favorite editor's find and replace feature.
3. No way of testing if a particular variable is available in the corresponding .env / .properties file other than manually doing grep on the file. This can cause lots of surprises when you actually deploy an app in environment.

#### Solutions to above problems
1. A simple DSL that can logically group different configurations and produce the final env / property file in same order across multiple environment.
2. Rather than managing .env / .properties files in plain text files, an ability to write your .env / .properties in ruby language allows you to unit test your configuration files for presence or absense of particular key/value pair.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gen-env'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gen-env

## Usage


## Development

After checking out the repo, run `bundle install --path vendor/bundle` to install dependencies. Then, run `bundle exec rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/davcdhanesh1/gen-env. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

