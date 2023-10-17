defmodule StreetfoodWeb.BusinessLive.Index do
  use StreetfoodWeb, :live_view

  alias Streetfood.Businesses
  #  alias Streetfood.Businesses.Business

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign_businesses(socket)}
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, assign_businesses(socket)}
  end

  defp assign_businesses(socket) do
    assign(socket, :businesses, Businesses.list_businesses())
  end

  # defp apply_action(socket, :edit, %{"id" => id}) do
  #   socket
  #   |> assign(:page_title, "Edit Business")
  #   |> assign(:business, Businesses.get_business!(id))
  # end

  # defp apply_action(socket, :new, _params) do
  #   socket
  #   |> assign(:page_title, "New Business")
  #   |> assign(:business, %Streetfood.Business{})
  # end

  # defp apply_action(socket, :index, _params) do
  #   socket
  #   |> assign(:page_title, "Listing Businesses")
  #   |> assign(:business, nil)
  # end

  @impl true
  def handle_info({StreetfoodWeb.BusinessLive.FormComponent, {:saved, business}}, socket) do
    {:noreply, stream_insert(socket, :businesses, business)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    business = Businesses.get_business!(id)
    {:ok, _} = Businesses.delete_business(business)

    {:noreply, stream_delete(socket, :businesses, business)}
  end
end
