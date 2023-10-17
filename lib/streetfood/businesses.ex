defmodule Streetfood.Businesses do
  @moduledoc """
  The Businesses context.
  """

  import Ecto.Query, warn: false
  alias Streetfood.Repo

  # alias Streetfood.Businesses.Business

  @doc """
  Returns the list of businesses.

  ## Examples

      iex> list_businesses()
      [%Business{}, ...]

  """
  def list_businesses do
    Repo.all(Streetfood.Business)
  end

  @doc """
  Gets a single business.

  Raises if the Business does not exist.

  ## Examples

      iex> get_business!(123)
      %Business{}

  """
  def get_business!(_id), do: raise("TODO")

  @doc """
  Creates a business.

  ## Examples

      iex> create_business(%{field: value})
      {:ok, %Business{}}

      iex> create_business(%{field: bad_value})
      {:error, ...}

  """
  def create_business(_attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a business.

  ## Examples

      iex> update_business(business, %{field: new_value})
      {:ok, %Business{}}

      iex> update_business(business, %{field: bad_value})
      {:error, ...}

  """
  def update_business(%Streetfood.Business{} = _business, _attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Business.

  ## Examples

      iex> delete_business(business)
      {:ok, %Business{}}

      iex> delete_business(business)
      {:error, ...}

  """
  def delete_business(%Streetfood.Business{} = _business) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking business changes.

  ## Examples

      iex> change_business(business)
      %Todo{...}

  """
  def change_business(%Streetfood.Business{} = _business, _attrs \\ %{}) do
    raise "TODO"
  end
end
