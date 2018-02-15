module Telegram::Bot::Types
  class InlineKeyboardMarkup
    attr_accessor :inline_keyboard

    def initialize(attributes)
      @inline_keyboard = attributes.map do |v|
        v.map do |b|
          if b.is_a?(InlineKeyboardButton)
            b
          elsif b.is_a?(Hash)
            InlineKeyboardButton.new(b)
          else
            raise Telegram::Bot::KeyboardMarkupError.new(
                'Attributes must be Array of Array of Telegram::Bot::Types::InlineKeyboardButton or Hash'
            )
          end
        end
      end
    end
  end
end