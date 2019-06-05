defmodule Membrane.Caps.Audio.FLAC.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @github_url "https://github.com/membraneframework/membrane-caps-audio-flac"

  def project do
    [
      app: :membrane_caps_audio_flac,
      version: @version,
      elixir: "~> 1.7",
      description: "Membrane Multimedia Framework (FLAC audio format definition)",
      package: package(),
      name: "Membrane Caps: Audio.FLAC",
      source_url: @github_url,
      docs: docs(),
      deps: deps()
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      source_ref: "v#{@version}",
      nest_modules_by_prefix: [Membrane.Caps.Audio.FLAC]
    ]
  end

  defp package do
    [
      maintainers: ["Membrane Team"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => @github_url,
        "Membrane Framework Homepage" => "https://membraneframework.org"
      }
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.20", only: :dev, runtime: false}
    ]
  end
end
