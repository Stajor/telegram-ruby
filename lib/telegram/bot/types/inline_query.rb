module Telegram::Bot::Types
  class InlineQuery
    attr_accessor :id,
                  :from,
                  :location,
                  :query,
                  :offset

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