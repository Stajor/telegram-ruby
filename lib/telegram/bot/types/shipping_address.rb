module Telegram::Bot::Types
  class ShippingAddress
    attr_accessor :country_code,
                  :state,
                  :city,
                  :street_line1,
                  :street_line2,
                  :post_code

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end