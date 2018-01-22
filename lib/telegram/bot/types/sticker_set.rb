module Telegram::Bot::Types
  class StickerSet
    attr_accessor :name,
                  :title,
                  :contains_masks,
                  :stickers

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def stickers=(attributes)
      @stickers = attributes.map {|attr| Sticker.new(attr) }
    end
  end
end