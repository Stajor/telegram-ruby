module Telegram::Bot::Types
  class MessageEntity
    attr_accessor :type,
                  :offset,
                  :length,
                  :url,
                  :user

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def user=(attributes)
      @user = User.new(attributes)
    end
  end
end