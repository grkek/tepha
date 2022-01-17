module Tepha
  abstract class Command
    abstract def keyword : String
    abstract def description : String
    abstract def execute(event, message)
  end
end
