class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.44"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.44/dropstone-darwin-arm64.zip"
      sha256 "acd1ad9b0199aa2c13ef702576433b839f1ceec6a1e9b6f4c97252cfb27f3f97"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.44/dropstone-darwin-x64.zip"
      sha256 "f500cd6b4fc5086b1bf2b9ae97cf3b0c20d4ad3c35d47b88601563356c21c27d"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.44/dropstone-linux-arm64.tar.gz"
      sha256 "728bc841d00ee3a0e703c019130e011386e5f46d7b18fd27e97da54348c2df61"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.44/dropstone-linux-x64.tar.gz"
      sha256 "e76e4318ce445038126c7869284d95c239b2e768388a7c5147b4aeaaf725bea4"
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
