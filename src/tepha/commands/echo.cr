module Tepha
  module Commands
    class Echo < Command
      def keyword : String
        "echo"
      end

      def description : String
        "This command simply replies your message!"
      end

      def execute(_event, message)
        {"id" => message.room_id, "text" => message.text}
      end
    end
  end
end
