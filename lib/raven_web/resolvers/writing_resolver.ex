defmodule RavenWeb.WritingResolver do
  alias Raven.Writing

  def all_notes(_parent, _args, _resolution) do
    {:ok, Writing.list_notes()}
  end
end