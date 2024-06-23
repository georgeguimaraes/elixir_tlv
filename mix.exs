defmodule TLV.MixProject do
  use Mix.Project

  def project do
    [
      app: :tlv,
      version: "0.2.0",
      elixir: "~> 1.17",
      description: "Encodes/Decodes BER-TLVs structures",
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.34.1", only: :dev},
      {:earmark, "~> 1.4.46", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["Michele Balistreri"],
      licenses: ["MIT"],
      files: ["lib", "mix.exs", "README*"],
      links: %{"GitHub" => "https://github.com/bitgamma/elixir_tlv"}
    ]
  end
end
