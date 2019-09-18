defmodule ProductShowcaseWeb.Router do
  use ProductShowcaseWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ProductShowcaseWeb do
    pipe_through :api
  end
end
