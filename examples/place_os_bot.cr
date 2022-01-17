require "../src/tepha"

Log.builder.bind "*", :debug, Log::IOBackend.new

session = Tepha::Session.new

client =
  Tepha::Client.new(
    name: "PlaceOS",
    session: session,
    commands: [
      Tepha::Commands::Echo.new,
      Tepha::Commands::Greeting.new,
      Tepha::Commands::Authorization.new,
    ] of Tepha::Command
  )

client.run
