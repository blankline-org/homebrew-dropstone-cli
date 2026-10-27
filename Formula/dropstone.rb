class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.65"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.65/dropstone-darwin-arm64.zip"
      sha256 "b5671bbbcc430939f2a2a34d7051a30f30e2c8753fbf9c9bf4c9194532c1df9b"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.65/dropstone-darwin-x64.zip"
      sha256 "315c426af5ea17cb3f359c31d6a3a027a8bcff72a87eff2beca5679317e01f45"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.65/dropstone-linux-arm64.tar.gz"
      sha256 "9e5beea156626400a6d971eeefba87ee3c9b8adafc20473d29af4106407e6e9f"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.65/dropstone-linux-x64.tar.gz"
      sha256 "12197bdc60a6dcc450c2c8b716c62193d3f646104c2b97904e908917d3a16370"
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
