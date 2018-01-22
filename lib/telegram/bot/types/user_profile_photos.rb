module Telegram::Bot::Types
  class UserProfilePhotos
    attr_accessor :total_count,
                  :photos

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def photos=(attributes)
      @photos = attributes.map {|attr| PhotoSize.new(attr) }
    end
  end
end