defmodule Streetfood.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      StreetfoodWeb.Telemetry,
      # Start the Ecto repository
      Streetfood.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Streetfood.PubSub},
      # Start Finch
      {Finch, name: Streetfood.Finch},
      # Start the Endpoint (http/https)
      StreetfoodWeb.Endpoint
      # Start a worker by calling: Streetfood.Worker.start_link(arg)
      # {Streetfood.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Streetfood.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    StreetfoodWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
