class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.66"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.66/dropstone-darwin-arm64.zip"
      sha256 "e9922a11ed3441e51464cb13ee671cb2ba17969afa2b63f74aff55cca0342475"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.66/dropstone-darwin-x64.zip"
      sha256 "1e033a707610d1ec3c661767ee548ad9928996bfaa83d612200ef60102111b65"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.66/dropstone-linux-arm64.tar.gz"
      sha256 "bfa4145d413431f6b31fb90fc2672ef5befa22db354aa6021078a856da036214"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.66/dropstone-linux-x64.tar.gz"
      sha256 "a1805928b2dc116c67e03e855a4060ddf400885a20e826d2db07f7b1651b0fad"
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
