require 'faraday'
require 'faraday_middleware'

require 'telegram/version'
require 'telegram/bot/configuration'
require 'telegram/bot/exceptions'
require 'telegram/bot/api'
require 'telegram/bot/types'
require 'telegram/bot/client'
require 'telegram/bot/client_accessors'
require 'telegram/bot/botan'
require 'telegram/bot/login'

module Telegram
  module Bot
    API_VERSION = 3.5.freeze
    API_URL = 'https://api.telegram.org'.freeze

    class << self
      attr_writer :configuration
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end
end