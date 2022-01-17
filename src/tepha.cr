require "halite"
require "log"
require "json"
require "uuid"
require "http"
require "./tepha/**"

Log.builder.bind "*", :debug, Log::IOBackend.new

session = Tepha::Session.new

client =
  Tepha::Client.new(
    session,
    [
      Tepha::Commands::Echo.new,
      Tepha::Commands::Greeting.new,
    ] of Tepha::Command
  )

client.run
