module Telegram::Bot::Types
  class WebhookInfo
    attr_accessor :url,
                  :has_custom_certificate,
                  :pending_update_count,
                  :last_error_date,
                  :last_error_message,
                  :max_connections,
                  :allowed_updates

    def initialize(attributes)
      attributes.each { |k, v| self.send("#{k}=", v) if self.respond_to? k }
    end
  end
end