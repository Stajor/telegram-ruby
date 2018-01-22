module Telegram::Bot::Types
  class Chat
    attr_accessor :id,
                  :type,
                  :title,
                  :username,
                  :first_name,
                  :last_name,
                  :all_members_are_administrators,
                  :photo,
                  :description,
                  :invite_link,
                  :pinned_message,
                  :sticker_set_name,
                  :can_set_sticker_set

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def photo=(attributes)
      @photo = ChatPhoto.new(attributes)
    end
  end
end