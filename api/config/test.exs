use Mix.Config

# Configure your database
config :product_showcase, ProductShowcase.Repo,
  username: "postgres",
  password: "postgres",
  database: "product_showcase_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :product_showcase, ProductShowcaseWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
