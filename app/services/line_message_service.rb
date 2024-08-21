require 'line/bot'

class LineMessageService
  attr_reader :message, :client

  def initialize(message)
    @message = message
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end

  def call
    message_block = {
      type: 'text',
      text: message
    }
    @client.push_message('WE NEED TO GET A USER ID', message_block)
    end
  end
end

# To use this
# LineMessageService.new('Hey you have trash coming').call
