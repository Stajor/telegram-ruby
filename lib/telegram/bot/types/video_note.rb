module Telegram::Bot::Types
  class VideoNote
    attr_accessor :file_id,
                  :length,
                  :duration,
                  :thumb,
                  :file_size

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def thumb=(attributes)
      @thumb = PhotoSize.new(attributes)
    end
  end
end