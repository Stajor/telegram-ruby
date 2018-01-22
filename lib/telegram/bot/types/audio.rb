module Telegram::Bot::Types
  class Audio
    attr_accessor :file_id,
                  :duration,
                  :performer,
                  :title,
                  :mime_type,
                  :file_size

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end