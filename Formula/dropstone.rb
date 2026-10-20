class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.63"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.63/dropstone-darwin-arm64.zip"
      sha256 "2471cfb776ea97ec1d972f2dcb55a0e50b29e9c02cc027ebfdec8c5a86ad3823"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.63/dropstone-darwin-x64.zip"
      sha256 "b1705d6859325c9e41abe4f1e97ef326e1763e9eaf0246795c9a9bf71adde4c0"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.63/dropstone-linux-arm64.tar.gz"
      sha256 "4f5143709dcc82d221b5de5c36eb803dc1425cdcec751e734dc92b03da7751f7"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.63/dropstone-linux-x64.tar.gz"
      sha256 "f9a1ba02fffc9c4f99bb9a91d78e113015ae55820f1333cb7018c9064bf28b6d"
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
