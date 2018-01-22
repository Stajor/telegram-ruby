module Telegram::Bot::Types
  class CallbackQuery
    attr_accessor :id,
                  :from,
                  :message,
                  :inline_message_id,
                  :chat_instance,
                  :data,
                  :game_short_name

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def from=(attributes)
      @from = User.new(attributes)
    end

    def message=(attributes)
      @message = Message.new(attributes)
    end
  end
end