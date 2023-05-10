defmodule Sonex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sonex,
      version: "0.0.1",
      elixir: "~> 1.2",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      mod: {Sonex.Application, []},
      extra_applications: [:logger, :httpoison, :cowboy, :ranch]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 1.6"},
     {:sweet_xml, "~> 0.7.1"},
     {:cowboy, "~> 2.6"}]
  end
end
