# Tepha

Two environment variables are needed:
- `INSTANCE_URL` (which can be anything unique for each bot instance)
- `WEBEX_TEAMS_ACCESS_TOKEN` (which is an access token for the bot)

## Usage

```crystal
require "tepha"

session = Tepha::Session.new

client =
  Tepha::Client.new(
    name: "Untitled", # Name of your bot.
    session: session,
    commands: [
      Tepha::Commands::Echo.new,
    ] of Tepha::Command
  )

client.run
```

Go to your Webex chat and text the bot `echo Hello, World!`, it will reply `Hello, World!`.