module Tepha
  abstract class Command
    abstract def keywords : Array(String)
    abstract def description : String
    abstract def execute(event, message)
  end
end
