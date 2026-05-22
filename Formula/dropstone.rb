class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.7/dropstone-darwin-arm64.zip"
      sha256 "9c7411e63d1751bd3a898c1627ea0b3b1d476f810757e4a55023c8012e102db7"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.7/dropstone-darwin-x64.zip"
      sha256 "a1d31a2f7fd24c3c7e52817e414f5a56ea188706bc0ff1befcb3a3da480d2076"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.7/dropstone-linux-arm64.tar.gz"
      sha256 "c2f899c5a64543cde5fc9d8cb9c3b5d19bf30c4e423f09a96e795bd86fcecbe1"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.7/dropstone-linux-x64.tar.gz"
      sha256 "8772aab6629771d1d85beba5e41640c775884deb326d3647794c67e84d79b52b"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
