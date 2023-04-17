defmodule Streetfood.BusinessesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Streetfood.Businesses` context.
  """

  @doc """
  Generate a business.
  """
  def business_fixture(attrs \\ %{}) do
    {:ok, business} =
      attrs
      |> Enum.into(%{

      })
      |> Streetfood.Businesses.create_business()

    business
  end
end
