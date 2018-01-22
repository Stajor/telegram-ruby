module Telegram::Bot::Types
  class Location
    attr_accessor :longitude,
                  :latitude

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end