module Telegram::Bot::Types
  class ForceReply
    attr_accessor :force_reply, :selective

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end