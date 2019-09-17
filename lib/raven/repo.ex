defmodule Raven.Repo do
  use Ecto.Repo,
    otp_app: :raven,
    adapter: Ecto.Adapters.Postgres
end
