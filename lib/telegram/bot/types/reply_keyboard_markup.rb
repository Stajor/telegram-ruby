module Telegram::Bot::Types
  class ReplyKeyboardMarkup
    attr_accessor :keyboard, :resize_keyboard, :one_time_keyboard, :selective

    def initialize(attributes, options = {})
      options.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }

      @keyboard = attributes.map do |v|
        v.map do |b|
          if b.is_a?(KeyboardButton)
            b
          elsif b.is_a?(Hash)
            InlineKeyboardButton.new(b)
          else
            raise Telegram::Bot::Exceptions::KeyboardMarkupError
                      .new('Attributes must be Array of Array of Telegram::Bot::Types::KeyboardButton or Hash')
          end
        end
      end
    end
  end
end