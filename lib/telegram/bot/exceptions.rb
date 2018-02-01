module Telegram
  module Bot
    module Exceptions
      class Error < StandardError; end

      class ResponseError < Error; end

      class ParseError < Error; end

      class KeyboardMarkupError < Error; end

      class BotanError < Error; end
    end
  end
end