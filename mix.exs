defmodule PlayfabEx.Mixfile do
  use Mix.Project

  def project do
    [
      app: :playfab_ex,
      version: "0.2.2",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:tesla, :poison, :dynamic_interfaces],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:floki, "~> 0.0.0", only: :dev},
      {:dynamic_interfaces, "~> 0.2.0"},
      {:tesla, "~> 0.0"},
      {:poison, "~> 3.0"}
    ]
  end

  defp description do
    """
    Elixir library for working with playfab 
    """
  end

  defp package do
    [
      name: :playfab_ex,
      files: ["lib", "mix.exs", "README*", "LICENSE*", "config"],
      maintainers: ["Skyler Parr"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/skylerparr/playfab_ex"}
    ]
  end
end
