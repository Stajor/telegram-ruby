module Telegram::Bot::Types
  class PhotoSize
    attr_accessor :file_id,
                  :width,
                  :height,
                  :file_size

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k.to_s}=", v) if self.respond_to? k.to_s }
    end
  end
end