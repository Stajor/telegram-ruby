module Telegram
  module Bot
    class Api
      def initialize(token = nil)
        @token = token || Bot.configuration.token
      end

      def token
        @token
      end

      def getMe
        request('getMe', {}, Types::User)
      end

      def setWebhook(url, options = {})
        request('setWebhook', {url: url}.merge(options))
      end

      def deleteWebhook
        request('deleteWebhook')
      end

      def getWebhookInfo
        request('getWebhookInfo', {}, Types::WebhookInfo)
      end

      def getUpdates(options = {})
        request('getUpdates', options, Types::Update, true)
      end

      def getFile(file_id)
        request('getFile', {file_id: file_id}, Types::File)
      end

      def sendMessage(chat_id, text, options = {})
        request('sendMessage', {chat_id: chat_id, text: text}.merge(options), Types::Message)
      end

      def forwardMessage(chat_id, from_chat_id, message_id, options = {})
        request('forwardMessage', {
            chat_id: chat_id, from_chat_id: from_chat_id, message_id: message_id
        }.merge(options), Types::Message)
      end

      def sendPhoto(chat_id, photo, options = {})
        request('sendPhoto', {chat_id: chat_id, photo: photo}.merge(options), Types::Message)
      end

      def sendAudio(chat_id, audio, options = {})
        request('sendAudio', {chat_id: chat_id, audio: audio}.merge(options), Types::Message)
      end

      def sendDocument(chat_id, document, options = {})
        request('sendDocument', {chat_id: chat_id, document: document}.merge(options), Types::Message)
      end

      def sendVideo(chat_id, video, options = {})
        request('sendVideo', {chat_id: chat_id, video: video}.merge(options), Types::Message)
      end

      def sendVoice(chat_id, voice, options = {})
        request('sendVoice', {chat_id: chat_id, voice: voice}.merge(options), Types::Message)
      end

      def sendMediaGroup(chat_id, video_note, options = {})
        request('sendMediaGroup', {chat_id: chat_id, video_note: video_note}.merge(options), Types::Message)
      end

      def sendVideoNote(chat_id, media, options = {})
        request('sendVideoNote', {chat_id: chat_id, media: media}.merge(options), Types::Message, true)
      end

      def sendLocation(chat_id, latitude, longitude, options = {})
        request('sendLocation', {
            chat_id: chat_id, latitude: latitude, longitude: longitude
        }.merge(options), Types::Message)
      end

      def editMessageLiveLocation(latitude, longitude, options = {})
        request('editMessageLiveLocation', {latitude: latitude, longitude: longitude}.merge(options), Types::Message)
      end

      def stopMessageLiveLocation(options = {})
        request('stopMessageLiveLocation', options, Types::Message)
      end

      def sendVenue(chat_id, latitude, longitude, title, address, options = {})
        request('sendVenue', {
            chat_id: chat_id, latitude: latitude, longitude: longitude, title: title, address: address
        }.merge(options), Types::Message)
      end

      def sendContact(chat_id, phone_number, first_name, options = {})
        request('sendContact', {
            chat_id: chat_id, phone_number: phone_number, first_name: first_name
        }.merge(options), Types::Message)
      end

      def sendChatAction(chat_id, action, options = {})
        request('sendChatAction', {chat_id: chat_id, action: action}.merge(options))
      end

      def getUserProfilePhotos(user_id, options = {})
        request('getUserProfilePhotos', {user_id: user_id}.merge(options), Types::UserProfilePhotos)
      end

      def kickChatMember(chat_id, user_id, options = {})
        request('kickChatMember', {chat_id: chat_id, user_id: user_id}.merge(options))
      end

      def unbanChatMember(chat_id, user_id, options = {})
        request('unbanChatMember', {chat_id: chat_id, user_id: user_id}.merge(options))
      end

      def promoteChatMember(chat_id, user_id, options = {})
        request('promoteChatMember', {chat_id: chat_id, user_id: user_id}.merge(options))
      end

      def restrictChatMember(chat_id, user_id, options = {})
        request('restrictChatMember', {chat_id: chat_id, user_id: user_id}.merge(options))
      end

      def exportChatInviteLink(chat_id)
        request('exportChatInviteLink', {chat_id: chat_id})
      end

      def setChatPhoto(chat_id, photo)
        request('setChatPhoto', {chat_id: chat_id, photo: photo})
      end

      def deleteChatPhoto(chat_id)
        request('deleteChatPhoto', {chat_id: chat_id})
      end

      def setChatTitle(chat_id, title)
        request('setChatTitle', {chat_id: chat_id, title: title})
      end

      def setChatDescription(chat_id, options = {})
        request('setChatDescription', {chat_id: chat_id}.merge(options))
      end

      def pinChatMessage(chat_id, message_id, options = {})
        request('pinChatMessage', {chat_id: chat_id, message_id: message_id}.merge(options))
      end

      def unpinChatMessage(chat_id)
        request('unpinChatMessage', {chat_id: chat_id})
      end

      def leaveChat(chat_id)
        request('leaveChat', {chat_id: chat_id})
      end

      def getChat(user_id)
        request('getChat', {chat_id: user_id}, Types::Chat)
      end

      def getChatAdministrators(chat_id)
        request('getChatAdministrators', {chat_id: chat_id}, Types::ChatMember, true)
      end

      def getChatMembersCount(chat_id)
        request('getChatMembersCount', {chat_id: chat_id})
      end

      def getChatMember(chat_id, user_id)
        request('getChatMember', {chat_id: chat_id, user_id: user_id}, Types::ChatMember)
      end

      def setChatStickerSet(chat_id, sticker_set_name)
        request('setChatStickerSet', {chat_id: chat_id, sticker_set_name: sticker_set_name})
      end

      def deleteChatStickerSet(chat_id)
        request('deleteChatStickerSet', {chat_id: chat_id})
      end

      def answerCallbackQuery(callback_query_id, options = {})
        request('answerCallbackQuery', {callback_query_id: callback_query_id}.merge(options))
      end

      def editMessageText(text, options = {})
        request('editMessageText', {text: text}.merge(options), Types::Message)
      end

      def editMessageCaption(options = {})
        request('editMessageCaption', options, Types::Message)
      end

      def editMessageReplyMarkup(options = {})
        request('editMessageReplyMarkup', options, Types::Message)
      end

      def deleteMessage(chat_id, message_id)
        request('deleteMessage', {chat_id: chat_id, message_id: message_id})
      end

      def sendSticker(chat_id, sticker, options = {})
        request('sendSticker', {chat_id: chat_id, sticker: sticker}.merge(options), Types::Message)
      end

      def getStickerSet(name)
        request('getStickerSet', {name: name}, Types::StickerSet)
      end

      def uploadStickerFile(user_id, png_sticker)
        request('uploadStickerFile', {user_id: user_id, png_sticker: png_sticker}, Types::File)
      end

      def createNewStickerSet(user_id, name, title, png_sticker, emojis, options = {})
        request('createNewStickerSet', {
            user_id: user_id, name: name, title: title, png_sticker: png_sticker, emojis: emojis
        }.merge(options))
      end

      def addStickerToSet(user_id, name, png_sticker, emojis, options = {})
        request('addStickerToSet', {
            user_id: user_id, name: name, png_sticker: png_sticker, emojis: emojis
        }.merge(options))
      end

      def setStickerPositionInSet(sticker, position)
        request('setStickerPositionInSet', {sticker: sticker, position: position})
      end

      def deleteStickerFromSet(sticker)
        request('deleteStickerFromSet', {sticker: sticker})
      end

      def request(method, query = {}, type_obj = nil, as_array = false)
        query[:reply_markup] = query[:reply_markup].to_json if query.has_key?(:reply_markup)

        response  = connection.post("/bot#{@token}/#{method}", query)
        body      = response.body

        if Bot.configuration.raise_exceptions && (response.status != 200 || body['ok'] != true)
          raise Telegram::Bot::ResponseError.new(body['description'])
        end

        if type_obj.nil?
          body['result']
        elsif as_array
          body['result'].map {|r| type_obj.new(r) }
        else
          type_obj.new(body['result'])
        end
      end

      def connection
        @conn ||= Faraday.new(url: API_URL) do |faraday|
          faraday.response :json, content_type: /\bjson$/
          faraday.request :multipart
          faraday.request :url_encoded
          faraday.adapter Faraday.default_adapter
        end
      end
    end
  end
end