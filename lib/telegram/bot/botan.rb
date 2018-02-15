module Telegram::Bot
  class Botan
    API_URL = 'https://api.botan.io'.freeze

    def initialize(token = nil)
      @token = token || Telegram::Bot.configuration.botan_token
    end

    def track(uid, message, name)
      begin
        response = Faraday.new(url: API_URL).post do |req|
          req.url "/track?token=#{@token}&uid=#{uid}&name=#{name}"
          req.headers['Content-Type'] = 'application/json'
          req.body = JSON.dump({text: message})
        end

        JSON.parse(response.body)
      rescue => e
        raise Telegram::Bot::BotanError.new(e.message)
      end
    end
  end
end