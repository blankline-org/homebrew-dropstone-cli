class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.30"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.30/dropstone-darwin-arm64.zip"
      sha256 "423e3f1c63237a182d60b86e563cb982e46384bcdfe30d5f1bd7538ddfce7956"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.30/dropstone-darwin-x64.zip"
      sha256 "7081fcba5ae6ecefd673724015cd50b28810ebc2a9b26cd752b6e607a2dc5c74"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.30/dropstone-linux-arm64.tar.gz"
      sha256 "9c02c735b051cc642baa74714027c9435529b145462a10636774be184cb9cc60"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.30/dropstone-linux-x64.tar.gz"
      sha256 "c745825a25014c7cc428e72170d4ef1787ab862988e7384586d3aad682b88502"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
