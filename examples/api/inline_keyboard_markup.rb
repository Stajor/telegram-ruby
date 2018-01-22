require 'rubygems'
require 'telegram/bot'

api = Telegram::Bot::Api.new('[place-your-token]')
btn1 = Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Command 1', callback_data: '/command1')
btn2 = Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Command 2', callback_data: '/command2')
btn3 = Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Command 3', callback_data: '/command3')
api.sendMessage('[chat-id]', 'some text', reply_markup: Telegram::Bot::Types::InlineKeyboardMarkup.new([
  [btn1, btn2], [btn3]
]))

# or

api.sendMessage('[chat-id]', 'some text', reply_markup: Telegram::Bot::Types::InlineKeyboardMarkup.new([
  [{text: 'Command 1', callback_data: '/command1'}, {text: 'Command 2', callback_data: '/command2'}],
  [{text: 'Command 3', callback_data: '/command3'}],
]))