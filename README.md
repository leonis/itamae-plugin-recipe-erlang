# Itamae::Plugin::Recipe::Erlang

[Itamae](https://github.com/itamae-kitchen/itamae) plugin to install erlang.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-erlang'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-erlang

## Usage

### Recipe

```
# your recipe
include_recipe 'erlang::package'
```

### Node

Use this with `itamae -y node.yml`

```
# node.yml
erlang:
  version: R14B
```

This version attribute is optional.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itamae-plugin-recipe-erlang/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

MIT
