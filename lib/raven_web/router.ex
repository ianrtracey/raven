defmodule RavenWeb.Router do
  use RavenWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: RavenWeb.Schema,
      interface: :simple,
      context: %{pubsub: RavenWeb.Endpoint}
  end

end