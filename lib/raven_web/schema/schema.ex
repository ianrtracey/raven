defmodule RavenWeb.Schema do
  use Absinthe.Schema
  import_types RavenWeb.Schema.Writing

  alias RavenWeb.WritingResolver

  query do

    @desc "Get all notes"
    field :all_notes, list_of(:note) do
      resolve &WritingResolver.all_notes/3
    end
  end

  mutation do
    field :create_note, :note do
      arg :title, :string
      arg :body, :string

      resolve &WritingResolver.create_note/3
    end
  end
end
