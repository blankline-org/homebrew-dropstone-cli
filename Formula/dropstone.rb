class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.15/dropstone-darwin-arm64.zip"
      sha256 "fdbdf949b1dde14429683f0498c713188832ccbe0956283c7fb860325ff1b908"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.15/dropstone-darwin-x64.zip"
      sha256 "c661e02fd526d9d75767336cc215c96b380d861a058860efea8e9d7b1a81e00d"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.15/dropstone-linux-arm64.tar.gz"
      sha256 "0c49619aef637b7a895811cecb7f68500022cb3b6c93fd5b43c1cd979a2c9158"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.15/dropstone-linux-x64.tar.gz"
      sha256 "0b07acee4a69e1e80708a40de9473dc02a0bec896b3b66b864dad2320138a0b0"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
