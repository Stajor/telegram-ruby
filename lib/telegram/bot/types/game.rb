module Telegram::Bot::Types
  class Game
    attr_accessor :title,
                  :description,
                  :photo,
                  :text,
                  :text_entities,
                  :animation

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def photo=(attributes)
      @photo = attributes.map {|attr| PhotoSize.new(attr) }
    end

    def text_entities=(attributes)
      @text_entities = attributes.map {|attr| MessageEntity.new(attr) }
    end

    def animation=(attributes)
      @animation = Animation.new(attributes)
    end
  end
end