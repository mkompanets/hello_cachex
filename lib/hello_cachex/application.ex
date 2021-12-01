defmodule HelloCachex.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: HelloCachex.Worker.start_link(arg)
      # {HelloCachex.Worker, arg}
      Supervisor.child_spec({Cachex, name: :some_cache}, id: :some_cache_id),
      Supervisor.child_spec({Cachex, name: :some_other_cache}, id: :some_other_cache)
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloCachex.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
