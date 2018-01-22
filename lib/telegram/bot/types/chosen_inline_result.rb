module Telegram::Bot::Types
  class ChosenInlineResult
    attr_accessor :result_id,
                  :from,
                  :location,
                  :inline_message_id,
                  :query

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def from=(attributes)
      @from = User.new(attr)
    end

    def location=(attributes)
      @location = Location.new(attr)
    end
  end
end