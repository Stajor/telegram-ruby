require 'rubygems'
require 'telegram/bot'

api = Telegram::Bot::Api.new('[place-your-token]')
api.sendMessage('[chat-id]', '<b>some text</b>', {parse_mode: 'HTML'})