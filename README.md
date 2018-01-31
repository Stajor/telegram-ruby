# telegram-ruby

Ruby wrapper for [Telegram's Bot API](https://core.telegram.org/bots/api).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'telegram-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install telegram-ruby
    
## Telegram API support
All types and methods of the Telegram Bot API 3.5 are supported.

## Configuration
First of all you need create your own bot and obtain a token

[How do I create a bot?](https://core.telegram.org/bots#3-how-do-i-create-a-bot)

Then you can configure **Telegram::Bot** in config/initializers/telegram.rb

    
```
require 'telegram/bot'
    
Telegram::Bot.configure do |conf|
    conf.token = 'Here your token'
    conf.raise_exceptions = false #By default true
    conf.name = '@MyBot'
    conf.botan_token = 'Botan token' #If using botan.io
end
```
    
    
## Usage

You can use **Telegram::Bot::Api** stand alone


```
api = Telegram::Bot::Api.new([Token key])
api.getMe
```

Or by using **Telegram::Bot::Client** to receive updates from Telegram

Create handler class

```
class MyHandler
  include Telegram::Bot::ClientAccessors

  # this method will be called if /test string was found in message text
  def cmd_test
    api.sendMessage(message.chat.id, 'Yes, it is test')
  end

  # this method will be called if no command found
  def cmd_fallback
    # log message
  end
end
```

In your controller add

```
def create
 client = Telegram::Bot::Client.new(MyHandler)
 client.handle(params)
end
```

In your handler you can use helper accessors

**api** - **Telegram::Bot::Api** instance  

**update** - This [object](https://core.telegram.org/bots/api#update) represents an incoming update.

**message** - This [object](https://core.telegram.org/bots/api#message) represents a message.

**command** - Current command if found in message text (without prefix cmd_)

**botan** - This object represents a [botan](http://botan.io) integration

### Send Photo
From url
```
api.sendPhoto([Chat id], [Url to image], {caption: 'Image caption'})
```
From server
```
api.sendPhoto([Chat id], Faraday::UploadIO.new([patg to image], 'image/png', 'my_image.png'), {caption: 'Image caption'})
```

### Botan

The most advanced analytics for your Telegram bot.
See more information on [botan.io](http://botan.io)

Usage
```
botan = Telegram::Bot::Botan([appmetrica-token])
uid = 123
message = 'text'
name = 'search'
botan.track(uid, message, name)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Stajor/telegram-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).