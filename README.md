# Maxrmapi

This gem wraps around Data Extraction API from MAX RemoteManagement. MAX RM is a monitoring and management tool provided by LogicNow for Managed IT Service Providers. If you need to get list of your clients, their sites, server, workstations and the results of their monitoring checks in your application.

_INCOMPLETNESS WARNING!!!_

Right now the gem is in the pre-alpha status, I am using this repo as my own tutorial how to write gems for Ruby on Rails. Though I did a piece of quite ugly code to sync the Clients, Sites, Servers, Workstations and checks status into database, this repo contains only those methods:

* get_maxrm_xml

...

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'maxrmapi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install maxrmapi

Generate initializer file
```bash
$ rails g initializer
```

## Usage

* Add your maxrm\_api\_key to your secrets.yml file.
* Edit config/initializers/maxrm_init.rb and set $maxrm\_host to your MAX RM dashboard URL.

secrets.yml:
```
development:
  ...
  maxrm_api_key: themaxrmapikeygoeshere
  
test:
  ...
  
production:
  ...
  maxrm_api_key: <%= ENV["MAXRM_API_KEY"] %>
```
config/initializers/maxrm_init.rb:
```ruby
$maxrm_host = "wwweurope1.systemmonitor.eu.com"
```

Then you can call the methods like this:
```ruby
$xml = Maxrmapi.get_maxrm_xml('list_clients')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/maxrmapi.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

