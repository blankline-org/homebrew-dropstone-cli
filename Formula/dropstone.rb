class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.32"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.32/dropstone-darwin-arm64.zip"
      sha256 "ab0c121396d6e39ec3dab06b70280e8a3d5660d4275951975184e17899f7783d"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.32/dropstone-darwin-x64.zip"
      sha256 "bb06bf369a855e8d50c83e81cbae02e5be043799f9e4c92b267816c830c2181c"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.32/dropstone-linux-arm64.tar.gz"
      sha256 "ee9f24c0581734d833fe62fb6a2a257e617583afc28c4072cb78d06613edba67"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.32/dropstone-linux-x64.tar.gz"
      sha256 "7002a1fc3a16cbac735ea65df5d2affe6ff59cc9ecd7404cb455842921c34f3f"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
