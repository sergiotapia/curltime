defmodule Curltime.Mixfile do
  use Mix.Project

  def project do
    [app: :curltime,
     version: "1.0.2",
     elixir: "~> 1.3",
     description: description(),
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
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
    []
  end

  defp description do
    """
    curltime is an Elixir package allows you to easily get website response times.
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :curltime,
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Sergio Tapia"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/sergiotapia/curltime"}]
  end
end
