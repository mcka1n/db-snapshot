# Db::Snapshot

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/db/snapshot`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'db-snapshot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install db-snapshot

## Usage

You have 3 useful methods with `Db::Snapshot`

- [`list`](https://github.com/mcka1n/db-snapshot#list)
- [`create`](https://github.com/mcka1n/db-snapshot#create)
- [`travel_to`](https://github.com/mcka1n/db-snapshot#travel_to)

### list

Provides a list of the folders inside the dump/ folder.

### create

Creates a snapshot of the existing database, it uses the following format for
the snapshot name **yyyymmdd_hhmm**

```ruby
# Optional, you can send your own name for this snapshot.
Db::Snapshot.create()
```

Result:

    dump/20160612_2115/my_db_name

### travel_to

Like a time machine, you can travel to the past with this method, this is how to use it:

```ruby
Db::Snapshot.travel_to('20160612_2115')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mcka1n/db-snapshot. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
