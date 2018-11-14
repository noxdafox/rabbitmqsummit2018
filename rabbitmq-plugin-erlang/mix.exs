defmodule RabbitMQ.MyPlugin.Mixfile do
  use Mix.Project

  def project do
    [
      app: :rabbitmq_plugin_elixir,
      version: "0.0.1",
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:rabbit],
    ]
  end

  defp deps() do
    [
      {
        :rabbit,
        path: Path.join("deps", "rabbit"),
        compile: ":",
        override: true
      },
      {
        :rabbit_common,
        path: Path.join("deps", "rabbit_common"),
        compile: ":",
        override: true
      }
    ]
  end
end
