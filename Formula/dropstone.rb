class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.67"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.67/dropstone-darwin-arm64.zip"
      sha256 "7b8cdf2523fb845abdfc6ede1d0ce102cd99652162755b8a7f1c241b589b1d28"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.67/dropstone-darwin-x64.zip"
      sha256 "503e04f257f9c258efd3dfbe61ac5511e0fc18181a4bca21bba8c58e38f7c257"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.67/dropstone-linux-arm64.tar.gz"
      sha256 "466bdca1e192a9338a49585a7556298c8ea91ce266995cea6225b6705c564159"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.67/dropstone-linux-x64.tar.gz"
      sha256 "cd40fe3cd84ae83dc9e910124693d653f2e68552bb95dd4988dac5d2e14d9625"
    end
  end

  def install
    bin.install "dropstone"
    prefix.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
