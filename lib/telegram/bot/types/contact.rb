module Telegram::Bot::Types
  class Contact
    attr_accessor :phone_number,
                  :first_name,
                  :last_name,
                  :user_id

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end