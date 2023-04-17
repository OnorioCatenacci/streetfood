defmodule Streetfood.Repo.Migrations.CreateBusinesses do
  use Ecto.Migration

  def change do
    create table(:businesses) do
      add :applicant, :string
      add :location_description, :string
      add :address, :string
      add :rating, :integer

      timestamps()
    end
  end
end
