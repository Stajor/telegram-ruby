module Telegram::Bot::Types
  class Voice
    attr_accessor :file_id,
                  :duration,
                  :mime_type,
                  :file_size

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end