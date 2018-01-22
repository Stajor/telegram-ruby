module Telegram::Bot::Types
  class KeyboardButton
    attr_accessor :text,
                  :request_contact,
                  :request_location

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end