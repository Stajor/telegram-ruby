module Telegram::Bot::Types
  class Message
    attr_accessor :message_id,
                  :from,
                  :date,
                  :chat,
                  :forward_from,
                  :forward_from_chat,
                  :forward_from_message_id,
                  :forward_signature,
                  :forward_date,
                  :reply_to_message,
                  :edit_date,
                  :media_group_id,
                  :author_signature,
                  :text,
                  :entities,
                  :caption_entities,
                  :audio,
                  :document,
                  :game,
                  :photo,
                  :sticker,
                  :video,
                  :voice,
                  :video_note,
                  :caption,
                  :contact,
                  :location,
                  :venue,
                  :new_chat_members,
                  :left_chat_member,
                  :new_chat_title,
                  :new_chat_photo,
                  :delete_chat_photo,
                  :group_chat_created,
                  :supergroup_chat_created,
                  :channel_chat_created,
                  :migrate_to_chat_id,
                  :migrate_from_chat_id,
                  :pinned_message,
                  :invoice,
                  :successful_payment

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end

    def from=(attributes)
      @from = User.new(attributes)
    end

    def chat=(attributes)
      @chat = Chat.new(attributes)
    end

    def forward_from=(attributes)
      @forward_from = User.new(attributes)
    end

    def forward_from_chat=(attributes)
      @forward_from_chat = Chat.new(attributes)
    end

    def reply_to_message=(attributes)
      @reply_to_message = Message.new(attributes)
    end

    def entities=(attributes)
      @entities = attributes.map {|attr| MessageEntity.new(attr) }
    end

    def caption_entities=(attributes)
      @caption_entities = attributes.map {|attr| MessageEntity.new(attr) }
    end

    def audio=(attributes)
      @audio = Audio.new(attributes)
    end

    def document=(attributes)
      @document = Audio.new(attributes)
    end

    def game=(attributes)
      @game = Game.new(attributes)
    end

    def photo=(attributes)
      @photo = attributes.map {|photo| PhotoSize.new(photo)}
    end

    def sticker=(attributes)
      @sticker = Sticker.new(attributes)
    end

    def video=(attributes)
      @video = Video.new(attributes)
    end

    def voice=(attributes)
      @voice = Voice.new(attributes)
    end

    def video_note=(attributes)
      @video_note = VideoNote.new(attributes)
    end

    def contact=(attributes)
      @contact = Contact.new(attributes)
    end

    def location=(attributes)
      @location = Location.new(attributes)
    end

    def venue=(attributes)
      @venue = Venue.new(attributes)
    end

    def new_chat_members=(attributes)
      @new_chat_members = attributes.map {|attr| User.new(attr) }
    end

    def left_chat_member=(attributes)
      @left_chat_member = User.new(attributes)
    end

    def new_chat_photo=(attributes)
      @new_chat_photo = PhotoSize.new(attributes)
    end

    def pinned_message=(attributes)
      @pinned_message = Message.new(attributes)
    end

    def invoice=(attributes)
      @invoice = Invoice.new(attributes)
    end

    def successful_payment=(attributes)
      @successful_payment = SuccessfulPayment.new(attributes)
    end
  end
end