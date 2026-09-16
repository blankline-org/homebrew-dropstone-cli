class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.47"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.47/dropstone-darwin-arm64.zip"
      sha256 "c981d47f8d9d3700389186de88b91f47e584f0ccd94ba7f28114177a3ebfdd84"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.47/dropstone-darwin-x64.zip"
      sha256 "423ec91f0cf670d8e913bb5a326f6dc7dd542d4454cd19ecca6551a01b132c90"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.47/dropstone-linux-arm64.tar.gz"
      sha256 "01457f5c2fd53496279930f713133bf005e974bda42ac05b4ef9c7969c4d9a21"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.47/dropstone-linux-x64.tar.gz"
      sha256 "06ac814701fd4d722f8c35204083d4d6fc366fc273faeebcbc171ba70e8920db"
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
