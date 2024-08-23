require 'line/bot'

class LineMessageService
  attr_reader :message, :client

  def initialize(message)
    @message = message
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["SECRET_KEY_LINE"]
      config.channel_token = ENV["CHANNEL_TOKEN_LINE"]
    }
  end

  def call
    message_block = {
      type: 'text',
      text: message
    }
    @client.push_message('U4a41c30ad340bdc0dbd9333ca64d1f14', message_block)
  end
end

# To use this
# LineMessageService.new('Hey you have trash coming').call
