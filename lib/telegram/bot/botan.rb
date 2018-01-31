module Telegram::Bot
  class Botan
    require 'net/http'
    require 'net/https'
    require 'json'

    API_URL = 'https://api.botan.io'.freeze

    def initialize(token = nil)
      @token = token || Telegram::Bot.configuration.botan_token
    end

    def track(uid, message, name)
      response = Faraday.new(url: API_URL).post do |req|
        req.url "/track?token=#{@token}&uid=#{uid}&name=#{name}"
        req.headers['Content-Type'] = 'application/json'
        req.body = JSON.dump({text: message})
      end

      JSON.parse(response.body)
    end
  end
end