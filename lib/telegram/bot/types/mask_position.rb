module Telegram::Bot::Types
  class MaskPosition
    attr_accessor :point,
                  :x_shift,
                  :y_shift,
                  :scale

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end