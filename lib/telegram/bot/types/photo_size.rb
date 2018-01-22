module Telegram::Bot::Types
  class PhotoSize
    attr_accessor :file_id,
                  :width,
                  :height,
                  :file_size

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end