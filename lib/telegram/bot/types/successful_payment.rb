module Telegram::Bot::Types
  class SuccessfulPayment
    attr_accessor :currency,
                  :total_amount,
                  :invoice_payload,
                  :shipping_option_id,
                  :order_info,
                  :telegram_payment_charge_id,
                  :provider_payment_charge_id

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def order_info=(attributes)
      @order_info = OrderInfo.new(attributes)
    end
  end
end