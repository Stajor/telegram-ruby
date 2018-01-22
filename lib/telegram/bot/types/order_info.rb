module Telegram::Bot::Types
  class OrderInfo
    attr_accessor :name,
                  :phone_number,
                  :email,
                  :shipping_address

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def shipping_address=(attributes)
      @shipping_address = ShippingAddress.new(attributes)
    end
  end
end