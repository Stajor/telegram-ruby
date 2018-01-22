module Telegram::Bot::Types
  class User
    attr_accessor :id,
                  :is_bot,
                  :first_name,
                  :last_name,
                  :username,
                  :language_code

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end