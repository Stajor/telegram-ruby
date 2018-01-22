module Telegram::Bot::Types
  class InlineKeyboardButton
    attr_accessor :text,
                  :url,
                  :callback_data,
                  :switch_inline_query,
                  :switch_inline_query_current_chat,
                  :callback_game,
                  :pay

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def callback_game=(attributes)
      @callback_game = CallbackGame.new(attributes)
    end
  end
end