module Telegram
  module Bot
    class Configuration
      attr_accessor :token, :raise_exceptions

      def initialize
        @raise_exceptions = true
      end
    end
  end
end