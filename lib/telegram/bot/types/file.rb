module Telegram::Bot::Types
  class File
    attr_accessor :file_id,
                  :file_size,
                  :file_path

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def file_path=(file_path)
      @file_path = file_path
    end
  end
end