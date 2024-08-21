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
      text: "Hello world"
    }
    @client.push_message('alfonsdefromage', message_block)
    end
  end

# To use this
# LineMessageService.new('Hey you have trash coming').call
