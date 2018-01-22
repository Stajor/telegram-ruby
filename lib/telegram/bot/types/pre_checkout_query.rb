module Telegram::Bot::Types
  class PreCheckoutQuery
    attr_accessor :id,
                  :from,
                  :currency,
                  :total_amount,
                  :invoice_payload,
                  :shipping_option_id,
                  :order_info

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def from=(attributes)
      @from = User.new(attr)
    end

    def order_info=(attributes)
      @order_info = OrderInfo.new(attr)
    end
  end
end