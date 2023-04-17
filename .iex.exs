import Ecto.Query

defmodule EctoHelpers.Streetfood do
  @moduledoc """
  This is a quick and easy way to allow me to run interactive queries from
  within iex.  This allows me to quickly confirm that I've gotten my Ecto query
  correct.

  ## Examples
  To use this:

  iex -S mix

  iex(1)> use EctoHelpers.Streetfood

  iex(2)> query = from f in Facility_Type,
         select: [f.id, f.name]

  iex(3)> Repo.all(query)
  """
  defmacro __using__(_) do
    quote do
      Streetfood.Repo.start_link(
        name: :streetfood,
        adapter: Ecto.Adapters.Postgres,
        hostname: "localhost",
        username: "postgres",
        password: "postgres",
        database: "streetfood_dev",
        pool_size: 20,
        queue_target: 5000,
        ssl: false,
        read_only: true
      )

      Streetfood.Repo.put_dynamic_repo(:streetfood)
      alias Streetfood.Repo, as: Repo

      alias Streetfood.{
        Business,
        Facility_Type,
        Permit
      }
    end
  end
end
