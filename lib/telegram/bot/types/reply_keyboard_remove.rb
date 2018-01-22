module Telegram::Bot::Types
  class ReplyKeyboardRemove
    attr_accessor :remove_keyboard, :selective

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end