class Slka < Formula
  desc "Slack CLI for Agentic Workflows"
  homepage "https://github.com/ulfschnabel/slka"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ulfschnabel/slka/releases/download/v0.5.1/slka-0.5.1-darwin-arm64.tar.gz"
      sha256 "7e7c0aa5867760f9b9d08ac46672508ee7ad81cf7eb2eb5009b0919c935d80fe"
    else
      url "https://github.com/ulfschnabel/slka/releases/download/v0.5.1/slka-0.5.1-darwin-amd64.tar.gz"
      sha256 "5ce58b64761674bbdcc6475d19101a17846507da959e10dd3c29fbde54babbda"
    end
  end

  def install
    bin.install "slka"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slka --version")
  end
end
