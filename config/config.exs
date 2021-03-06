# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rankings, Rankings.Repo,
  database: "rankings_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :rankings,
  ecto_repos: [Rankings.Repo]

# Configures the endpoint
config :rankings, RankingsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cSCZ6jLj0XGH34gMTEIBRzZOQyijeLbZPmK6NP3oB5SBsp4U7OygMj9cZJMWB1lT",
  render_errors: [view: RankingsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rankings.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
