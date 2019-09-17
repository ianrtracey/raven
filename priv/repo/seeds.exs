# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Raven.Repo.insert!(%Raven.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Raven.Writing.Note
alias Raven.Repo

%Note{title: "Paid S2S Meeting Notes", body: "This is the first post ever!!!"} |> Repo.insert!
%Note{title: "", body: "What a day today was...."} |> Repo.insert!