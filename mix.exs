defmodule ScenicFontPressStart2p.MixProject do
  use Mix.Project

  def project do
    [
      app: :scenic_font_press_start_2p,
      version: "0.1.0",
      elixir: "~> 1.7",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:scenic, "~> 0.10"},
      {:truetype_metrics, "~> 0.3"}
    ]
  end

  defp description do
    "Press Start 2P Font for Scenic"
  end

  defp package do
    %{
      licenses: ["OFL-1.1"],
      links: %{"GitHub" => "https://github.com/nerves-training/scenic_font_press_start_2p"}
    }
  end
end
