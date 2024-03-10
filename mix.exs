defmodule ExAwabi.MixProject do
  use Mix.Project

  @source_url "https://github.com/nakagami/exawabi"
  @version "0.2.0"

  def project do
    [
      app: :exawabi,
      version: @version,
      elixir: "~> 1.9",
      name: "ExAwabi",
      description: """
        Elixir wrapper for Awabi, the morphological analyzer using MeCab dictionary.
      """,
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers(),
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :rustler]
    ]
  end

  defp package do
    [
      maintainers: ["Hajime Nakagami"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url},
      files: ["lib", "native", "mix.exs", "README*", "LICENSE*"]
    ]
  end

  defp docs() do
    [
      main: "ExAwabi",
      source_url: @source_url,
      extras: ["README.md"]
    ]
  end

  defp deps do
    [
      {:rustler, "~> 0.23"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, "~> 1.5.0-rc.2", only: [:dev, :test], runtime: false}
    ]
  end
end
