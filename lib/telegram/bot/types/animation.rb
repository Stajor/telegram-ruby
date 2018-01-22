module Telegram::Bot::Types
  class Animation
    attr_accessor :file_id,
                  :thumb,
                  :file_name,
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