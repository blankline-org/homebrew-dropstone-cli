class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.5/dropstone-darwin-arm64.zip"
      sha256 "c4a5c3d2bfb0b747ff0e41096185a9a2761097d61f32e752d7767ce5794efcee"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.5/dropstone-darwin-x64.zip"
      sha256 "1a3ceec52fe3595473a251b16d1d2f9b1a03e023a9c7717d5c5dfaf8af7cb019"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.5/dropstone-linux-arm64.tar.gz"
      sha256 "be6529269028d49dd9da3bd800e728908d8e9b70498f67e1572b66cdf4452754"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.5/dropstone-linux-x64.tar.gz"
      sha256 "0cb391d822d8d8bd825b3575848665c41bae271d667df2fe7a0a57058123231e"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
