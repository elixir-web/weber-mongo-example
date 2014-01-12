defmodule TestMongoApp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :testMongoApp,
      version: "0.0.1",
      deps: deps(Mix.env)
    ]
  end

  def application do
    [
      applications: [],
      mod: {TestMongoApp, []}
    ]
  end

  defp deps(:prod) do
    [
      { :weber, github: "0xAX/weber" },
      { :mongoex, github: "mururu/mongoex"}
    ]
  end

  defp deps(:test) do
    deps(:prod) ++ [{ :hackney, github: "benoitc/hackney" }]
  end

  defp deps(_) do
    deps(:prod)
  end
end
