module Tepha
  module Commands
    class Authorization < Command
      def keywords : Array(String)
        ["auth"]
      end

      def description : String
        "This command simply replies your message!"
      end

      def execute(_event, message)
        instance_url, token = message.text.split
        {"id" => message.room_id, "text" => "Instance URL: #{instance_url}, Token: #{token}"}
      end
    end
  end
end
