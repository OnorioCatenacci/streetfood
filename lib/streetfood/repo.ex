defmodule Streetfood.Repo do
  use Ecto.Repo,
    otp_app: :streetfood,
    adapter: Ecto.Adapters.Postgres
end
