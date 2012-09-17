# Covetous

Covetous is a Ruby Wrapper for the Diablo 3 Web API

## Installation

Add this line to your application's Gemfile:

    gem 'covetous'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install covetous

## Usage

As of now, Covetous is just a plain ol' gee-- Ruby gem. He is basically just a Ruby wrapper(as I keep repeating...)
for the Diablo 3 Web API. After installing, all you have to do is require it where you like and just use it!

Some example usage would be:

### Career Profile

**Note**: Top level keys from the hashes are available as methods for your convenience

    my_profile = Covetous::Profile::Career.new 'corroded-6950'
    puts my_profile.heroes
    puts my_profile.kills

### Hero Profile

    my_hero = Covetous::Profile::Hero.new 'corroded-6950', '12793941'
    puts my_hero.skills
    puts my_hero.paragon_level

### Artisan Data

    artisan = Covetous::Data::Artisan.new 'blacksmith'
    puts artisan.name

### Follower Data

    follower = Covetous::Data::Follower.new 'enchantress'
    puts artisan.name

### Item Data

    item = Covetous::Data::Item.new 'CkMIz4LU4AoSBwgEFX35Tl0dLWYPvh194Mt2Ha3H5XEdElz0_B2H9XtuIgsIARWFQgMAGAAgCjAJOLYEQABIAVAOYPkEGPrl99QLUAZYAA'
    puts item.name
    puts item.attributes

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
