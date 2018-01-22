module Telegram::Bot::Types
  class Video
    attr_accessor :file_id,
                  :width,
                  :height,
                  :duration,
                  :thumb,
                  :mime_type,
                  :file_size

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def thumb=(attributes)
      @thumb = PhotoSize.new(attributes)
    end
  end
end