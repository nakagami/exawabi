defmodule ExAwabi.MixProject do
  use Mix.Project

  def project do
    [
      app: :exawabi,
      version: "0.1.0",
      elixir: "~> 1.9",
      name: "ExAwabi",
      description: "A morphological analyzer using mecab dictionary.",
      source_url: "https://github.com/nakagami/exawabi",
      start_permanent: Mix.env() == :prod,
      compilers: [:rustler] ++ Mix.compilers(),
      rustler_crates: [
        awabi_nif: [
          mode: (if Mix.env() == :prod, do: :release, else: :debug)
        ]
      ],
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.22-rc"}
    ]
  end
end
