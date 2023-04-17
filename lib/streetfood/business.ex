defmodule Streetfood.Business do
  use Ecto.Schema
  import Ecto.Changeset

  schema "businesses" do
    field :address, :string
    field :location_description, :string
    field :applicant, :string
    field :rating, :integer

    timestamps()
  end

  @doc false
  def changeset(business, attrs) do
    business
    |> cast(attrs, [:applicant, :location_description, :address, :rating])
    |> validate_required([:applicant, :location_description, :address, :rating])
  end
end
