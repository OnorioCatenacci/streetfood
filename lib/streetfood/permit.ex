defmodule Streetfood.Permit do
  use Ecto.Schema
  import Ecto.Changeset

  Module.register_attribute(__MODULE__, :no_permit_status, persist: true)
  @no_permit_status 0

  schema "permits" do
    field :status, :string

    timestamps()
  end

  @doc false
  def changeset(permit, attrs) do
    permit
    |> cast(attrs, [:status])
    |> validate_required([:status])
  end
end
