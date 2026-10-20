class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.61"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.61/dropstone-darwin-arm64.zip"
      sha256 "c757acbd369cacfa8ec3078adc060b641fb90b03ba26acbb076e76b5aacc1ecb"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.61/dropstone-darwin-x64.zip"
      sha256 "672a9fc1ab3b83b1122d44c55f6478240d6c1d01f3ba647133f5f7f0e2631bd2"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.61/dropstone-linux-arm64.tar.gz"
      sha256 "68a079f4872bacb7d38f44dec9c85cb90cda6531828f5adbb1a1bd6d62fc1b9c"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.61/dropstone-linux-x64.tar.gz"
      sha256 "c52042e5bcd95168c1499eae5702aa433b1c1b2585293e23b573ad5bb368b9a3"
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
