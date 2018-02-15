module Telegram
  module Bot
    class Error < StandardError; end

    class ResponseError < Error; end

    class ParseError < Error; end

    class KeyboardMarkupError < Error; end

    class LoginError < Error; end

    class BotanError < Error; end
  end
end