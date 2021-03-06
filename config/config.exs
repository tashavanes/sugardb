# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sugardb,
  ecto_repos: [Sugardb.Repo]

# Configures the endpoint
config :sugardb, Sugardb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Mp5NvT6baZunzFdbGQgpy6Y1ePySqeynA5afkX3P2HD7T7OD4+/iHBx5Pf8dKYnz",
  render_errors: [view: Sugardb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Sugardb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Sugardb.User,
  repo: Sugardb.Repo,
  module: Sugardb,
  web_module: Sugardb.Web,
  router: Sugardb.Router,
  messages_backend: Sugardb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, Sugardb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
