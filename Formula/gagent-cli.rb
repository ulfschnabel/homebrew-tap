class GagentCli < Formula
  desc "Google Workspace automation CLI for AI agents"
  homepage "https://github.com/ulfschnabel/gagent-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ulfschnabel/gagent-cli/releases/download/v0.3.1/gagent-cli_0.3.1_Darwin_arm64.tar.gz"
      sha256 "0486f06b449097449403533d21fe9cd2fed4244c8d6fb40a4328f5c5f70b5ae8"
    else
      url "https://github.com/ulfschnabel/gagent-cli/releases/download/v0.3.1/gagent-cli_0.3.1_Darwin_x86_64.tar.gz"
      sha256 "2487d61d45f74a36b8a55c5eef531af8d2d1b5c45140a72c8cb3f8e03e5da323"
    end
  end

  def install
    bin.install "gagent-cli"
  end

  test do
    assert_match "gagent-cli version #{version}", shell_output("#{bin}/gagent-cli --version")
  end
end
