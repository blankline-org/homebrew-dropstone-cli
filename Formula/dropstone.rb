class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.60"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.60/dropstone-darwin-arm64.zip"
      sha256 "18ddca2816abcf1dfc39324d67d2119e81c393bae0e0ba9b361da060c6575108"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.60/dropstone-darwin-x64.zip"
      sha256 "008019db31f1a68839bf36f3e8cc734e11d126fad9061ebfd94ea19124f87691"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.60/dropstone-linux-arm64.tar.gz"
      sha256 "eeca81140b20255702f0f88a8711dd37e9c045e69e81654b327466fb5d2ed0e1"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.60/dropstone-linux-x64.tar.gz"
      sha256 "ab3151c0bb3ca1f10914409b0b61bffef0201170981fd3ee1cd2348ec2641f2b"
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
