module Telegram::Bot::Types
  class ChatMember
    attr_accessor :user,
                  :status,
                  :until_date,
                  :can_be_edited,
                  :can_change_info,
                  :can_post_messages,
                  :can_edit_messages,
                  :can_delete_messages,
                  :can_invite_users,
                  :can_restrict_members,
                  :can_pin_messages,
                  :can_promote_members,
                  :can_send_messages,
                  :can_send_media_messages,
                  :can_send_other_messages,
                  :can_add_web_page_previews

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def user=(attributes)
      @user = User.new(attributes)
    end
  end
end