defmodule Streetfood.Repo.Migrations.CreatePermits do
  use Ecto.Migration

  def change do
    create table(:permits) do
      add :status, :string

      timestamps()
    end
  end
end
