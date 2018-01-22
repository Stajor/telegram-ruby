module Telegram::Bot::Types
  class Invoice
    attr_accessor :title,
                  :description,
                  :start_parameter,
                  :currency,
                  :total_amount

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end