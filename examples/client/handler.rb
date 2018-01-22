# In controller
#...
#def create
# client = Telegram::Bot::Client.new(MyHandler)
# client.handle(params)
#end
#...

class MyHandler
  include Telegram::Bot::ClientAccessors

  def cmd_test
    api.sendMessage(message.chat.id, 'Yes, it is test')
  end

  def cmd_fallback
    # log message
  end
end