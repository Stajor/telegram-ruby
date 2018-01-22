module Telegram::Bot::Types
  class Sticker
    attr_accessor :file_id,
                  :width,
                  :height,
                  :thumb,
                  :emoji,
                  :set_name,
                  :mask_position,
                  :file_size

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def thumb=(attributes)
      @thumb = PhotoSize.new(attributes)
    end

    def mask_position=(attributes)
      @mask_position = MaskPosition.new(attributes)
    end
  end
end