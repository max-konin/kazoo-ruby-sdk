# Kazoo::Ruby::Sdk

SDK for Kazoo API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kazoo-ruby-sdk'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kazoo-ruby-sdk

## Config

Create config/initializers/kazoo_ruby_sdk.rb
```ruby
KazooRubySdk.configure do |config|
  config.auth_url = 'http://yourserver.com:8000/v1'
  config.realm = 'your-realm'
  config.username = 'your-username'
  config.password = 'your-password'
end
```

## Usage
```ruby
devices = KazooRubySdk::Devices.list.data        
device_id = devices[0].id    
device = KazooRubySdk::Devices.get(device_id)
```
 
## List of methods

#### Devices
* list()
* get(device_id)
* get_statuses
* create(attributes)
* update(id, attributes)
* destroy(id)

#### Users
* list()
* get(id)
* create(attributes)
* update(id, attributes)
* destroy(id)

#### Callflows
* list()
* get(id)
* create(attributes)
* update(id, attributes)
* destroy(id)

#### CDRs
* range(from, to)
* get(cdr_id)
* get_all_by_user(user_id)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pohodnya/kazoo-ruby-sdk.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

