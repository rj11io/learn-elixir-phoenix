defmodule MyOtherApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MyOtherAppWeb.Telemetry,
      MyOtherApp.Repo,
      {DNSCluster, query: Application.get_env(:my_other_app, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: MyOtherApp.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: MyOtherApp.Finch},
      # Start a worker by calling: MyOtherApp.Worker.start_link(arg)
      # {MyOtherApp.Worker, arg},
      # Start to serve requests, typically the last entry
      MyOtherAppWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MyOtherApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MyOtherAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
