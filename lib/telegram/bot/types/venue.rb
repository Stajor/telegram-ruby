module Telegram::Bot::Types
  class Venue
    attr_accessor :location,
                  :title,
                  :address,
                  :foursquare_id

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def location=(attributes)
      @location = Location.new(attributes)
    end
  end
end