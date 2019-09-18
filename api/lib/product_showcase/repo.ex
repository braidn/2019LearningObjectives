defmodule ProductShowcase.Repo do
  use Ecto.Repo,
    otp_app: :product_showcase,
    adapter: Ecto.Adapters.CockroachDB
end
