defmodule RavenWeb.WritingResolver do
  alias Raven.Writing

  def all_notes(_parent, _args, _resolution) do
    {:ok, Writing.list_notes()}
  end

  def create_note(_parent, args, _info) do
    case Writing.create_note(args) do
      {:ok, note} ->
        {:ok, note}
      _error ->
        {:error, "could not create note"}
    end
  end
end