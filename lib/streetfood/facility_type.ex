defmodule Streetfood.Facility_Type do
  use Ecto.Schema
  import Ecto.Changeset

  Module.register_attribute(__MODULE__, :no_facility_type_specified, persist: true)
  @no_facility_type_specified 0

  schema "facility_types" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(facility__type, attrs) do
    facility__type
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
