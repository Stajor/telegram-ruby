module Telegram::Bot::Types
  class ShippingQuery
    attr_accessor :id,
                  :from,
                  :invoice_payload,
                  :shipping_address

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def from=(attributes)
      @from = User.new(attr)
    end

    def shipping_address=(attributes)
      @shipping_address = ShippingAddress.new(attributes)
    end
  end
end