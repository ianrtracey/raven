defmodule RavenWeb.Schema.Writing do
  use Absinthe.Schema.Notation

  object :note do
    field :id, non_null(:id)
    field :title, non_null(:string)
    field :body, non_null(:string)
  end
end