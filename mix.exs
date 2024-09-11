defmodule Fugue.Mixfile do
  use Mix.Project

  def project do
    [app: :fugue,
     description: "Extendable testing utilities for Plug",
     version: "0.1.6",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     consolidate_protocols: Mix.env == :prod,
     deps: deps(),
     package: package()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:mimetype_parser, "~> 0.1.0"},
     {:poison, ">= 0.0.0", optional: true},
     {:plug, ">= 1.2.0", optional: true},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp package do
    [files: ["lib", "mix.exs", "README*"],
     maintainers: ["Cameron Bytheway"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/exstruct/fugue"}]
  end
end
