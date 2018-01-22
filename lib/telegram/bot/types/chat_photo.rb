module Telegram::Bot::Types
  class ChatPhoto
    attr_accessor :small_file_id,
                  :big_file_id

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end