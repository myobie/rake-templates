# Rake::Templates

A simple templating library using rake. Assumes templates are in
`./templates` and want to be rendered into `./public`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rake-templates'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rake-templates

## Usage

```sh
$ rake templates:compile
```

will render and copy every file from `./templates` to `./public` one at
a time using tilt. The only additional method that is provided is
`asset_path` for use with [rake-sprockets](https://github.com/myobie/rake-templates).

## Contributing

1. Fork it ( https://github.com/myobie/rake-templates/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
