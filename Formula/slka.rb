class Slka < Formula
  desc "Slack CLI for Agentic Workflows"
  homepage "https://github.com/ulfschnabel/slka"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ulfschnabel/slka/releases/download/v0.6.0/slka-0.6.0-darwin-arm64.tar.gz"
      sha256 "9a3429436947646d809743d77fe085dee1656df8851a15d3e07c00133d9e6297"
    else
      url "https://github.com/ulfschnabel/slka/releases/download/v0.6.0/slka-0.6.0-darwin-amd64.tar.gz"
      sha256 "407675a33bf85f8678c12ba44d66685ffebc406483342383a65dd66eb614e771"
    end
  end

  def install
    bin.install "slka"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slka --version 2>&1", 1)
  end
end
