module Telegram::Bot::Types
  class Update
    attr_accessor :update_id,
                  :message,
                  :edited_message,
                  :channel_post,
                  :edited_channel_post,
                  :inline_query,
                  :chosen_inline_result,
                  :callback_query,
                  :shipping_query,
                  :pre_checkout_query

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def message=(attributes)
      @message = Message.new(attributes)
    end

    def edited_message=(attributes)
      @edited_message = Message.new(attributes)
    end

    def channel_post=(attributes)
      @channel_post = Message.new(attributes)
    end

    def edited_channel_post=(attributes)
      @edited_channel_post = Message.new(attributes)
    end

    def inline_query=(attributes)
      @inline_query = InlineQuery.new(attributes)
    end

    def chosen_inline_result=(attributes)
      @chosen_inline_result = ChosenInlineResult.new(attributes)
    end

    def callback_query=(attributes)
      @callback_query = CallbackQuery.new(attributes)
    end

    def shipping_query=(attributes)
      @shipping_query = ShippingQuery.new(attributes)
    end

    def pre_checkout_query=(attributes)
      @pre_checkout_query = PreCheckoutQuery.new(attributes)
    end
  end
end