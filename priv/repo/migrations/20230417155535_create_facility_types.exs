defmodule Streetfood.Repo.Migrations.CreateFacilityTypes do
  use Ecto.Migration

  def change do
    create table(:facility_types) do
      add :name, :string

      timestamps()
    end
  end
end
