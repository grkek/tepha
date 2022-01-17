module Tepha
  module Commands
    class Greeting < Command
      def keyword : String
        "hello"
      end

      def description : String
        "This command simply responds to hello, hi, how are you, etc."
      end

      def execute(_event, message)
        {"id" => message.room_id, "text" => "👋"}
      end
    end
  end
end
