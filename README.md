# Itamae::Plugin::Recipe::Httpd

Itamae recipe plugin for install httpd.

## Requirements

### Platform

- RHEL/CentOS 6

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-httpd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-httpd

## Attributes

| Key                                           | Type     | Description                 | Default      |
| -------------------------------------------   | -------- | --------------------------- | ------------ |
| `[:httpd][:server_root]`                      | String   | ServerRoot                  | `/etc/httpd` |
| `[:httpd][:timeout]`                          | Number   | Timeout                     | `60`         |
| `[:httpd][:keep_alive]`                       | Boolean  | Keepalive                   | `false`      |
| `[:httpd][:max_keep_alive_requests]`          | Number   | MaxKeepAliveRequests        | `100`        |
| `[:httpd][:keep_alive_timeout]`               | Number   | KeepAliveTimeout            | `15`         |
| `[:httpd][:prefork][:start_servers]`          | Number   | Prefork StartServers        | `8`          |
| `[:httpd][:prefork][:min_spare_servers]`      | Number   | Prefork MinSpareServers     | `5`          |
| `[:httpd][:prefork][:max_spare_servers]`      | Number   | Prefork MaxSpareServers     | `20`         |
| `[:httpd][:prefork][:server_limit]`           | Number   | Prefork ServerLimit         | `256`        |
| `[:httpd][:prefork][:max_clients]`            | Number   | Prefork MaxClients          | `256`        |
| `[:httpd][:prefork][:max_requests_per_child]` | Number   | Prefork MaxRequestsPerChild | `4000`       |
| `[:httpd][:listen]`                           | Number   | Listen port                 | `80`         |

## Usage

```ruby
include_recipe 'httpd'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/itamae-plugin-recipe-httpd.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

