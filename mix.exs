defmodule Membrane.FLAC.Mixfile do
  use Mix.Project

  @version "0.2.1"
  @github_url "https://github.com/membraneframework/membrane_flac_format"

  def project do
    [
      app: :membrane_flac_format,
      version: @version,
      elixir: "~> 1.7",
      description: "Membrane FLAC audio format definition",
      package: package(),
      name: "Membrane FLAC format",
      source_url: @github_url,
      docs: docs(),
      deps: deps(),
      aliases: [docs: ["docs", &prepend_llms_links/1]]
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md", LICENSE: [title: "License"]],
      source_ref: "v#{@version}",
      nest_modules_by_prefix: [Membrane.FLAC]
    ]
  end

  defp package do
    [
      maintainers: ["Membrane Team"],
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => @github_url,
        "Membrane Framework Homepage" => "https://membrane.stream"
      }
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.40", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: :dev, runtime: false}
    ]
  end

  defp prepend_llms_links(_) do
    output_dir = docs()[:output] || "doc"
    path = Path.join(output_dir, "llms.txt")

    if File.exists?(path) do
      existing = File.read!(path)

      footer = """


      ## See Also

      - [Membrane Framework AI Skill](https://hexdocs.pm/membrane_core/skill.md)
      - [Membrane Core](https://hexdocs.pm/membrane_core/llms.txt)
      """

      File.write!(path, String.trim_trailing(existing) <> footer)
    else
      IO.warn("#{path} not found — llms.txt was not generated, check your ex_doc configuration")
    end
  end
end
