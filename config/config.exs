# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wolf_blog,
  ecto_repos: [WolfBlog.Repo]

# Configures the endpoint
config :wolf_blog, WolfBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3qlJrorZN2GOIDHqg2fURv79lpLo/FKcsIEen2Jk0GEHteRqdwnOJ2R1JLI0pRfi",
  render_errors: [view: WolfBlogWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: WolfBlog.PubSub,
  live_view: [signing_salt: "EQRUOfYP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
