require 'openssl'

module Telegram::Bot
  class Login
    def self.verify!(auth_data)
      check_hash = auth_data[:hash]
      auth_data = auth_data.slice(:auth_date, :first_name, :id, :last_name, :photo_url, :username)
      check_string = auth_data.map {|k, v| "#{k}=#{v}" }.sort.join("\n")

      secret_key = OpenSSL::Digest::SHA256.new.digest(Telegram::Bot.configuration.token)
      hash = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), secret_key, check_string)

      raise Telegram::Bot::LoginError.new('Data is NOT from Telegram') if (hash.casecmp(check_hash) != 0)
      raise Telegram::Bot::LoginError.new('Data is outdated') if Time.now.to_i - auth_data[:auth_date] > 86400

      true
    end
  end
end