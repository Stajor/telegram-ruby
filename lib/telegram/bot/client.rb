module Telegram::Bot
  PAYLOAD_KEYS = %w(message edited_message channel_post edited_channel_post).freeze

  class Client
    attr_reader :update, :message, :command

    def initialize(handler)
      @handler = handler.new
      @handler.api = Telegram::Bot::Api.new
    end

    def handle(params)
      parse_request(params)
      invoke
    end

    def invoke
      @handler.update = @update
      @handler.message = @message
      @handler.command = @command

      if !@command.nil? && @handler.respond_to?("cmd_#{@command}")
        @handler.public_send("cmd_#{@command}")
      else
        @handler.public_send(:cmd_fallback) if @handler.respond_to?(:cmd_fallback)
      end
    end

    private

    def parse_request(params)
      @update = Types::Update.new(params)

      if params.has_key? :callback_query
        @message = @update.callback_query.message
        @command = pull_command(@update.callback_query.data)
      else
        message_key = PAYLOAD_KEYS.find { |key| params.has_key?(key.to_sym) }

        if !message_key.nil? && @update.respond_to?(message_key)
          @message = @update.send(message_key)
          @command = pull_command(@message.text)
          @command = pull_command(@message.reply_to_message.text) if !@command && @message.reply_to_message
        end
      end

      raise Exceptions::ParseError.new('Can not parse request') unless @message
    end

    def pull_command(text)
      text =  text.gsub(Telegram::Bot.configuration.name, '') if Telegram::Bot.configuration.name && !text.nil?
      !text.nil? && text.index('/') == 0 ? text.downcase.split(' ').first.gsub('/', '') : nil
    end
  end
end