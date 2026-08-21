class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.36"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.36/dropstone-darwin-arm64.zip"
      sha256 "c2a44dc14d62e2a1a483b6e983cb4259283f0d929b94ee0e08f0d4ae9445f8e3"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.36/dropstone-darwin-x64.zip"
      sha256 "ddff41111c800f6c42bd0d05da6c22dd183d2163bc24510e23e41cf6f973c779"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.36/dropstone-linux-arm64.tar.gz"
      sha256 "15510d7dc81ad42811a721e5c0e3b6d16e237d45485b33f38ff2267cfdb2735b"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.36/dropstone-linux-x64.tar.gz"
      sha256 "dd2d51028892132a40645abbc6a1716842587c52e2d18a3c733ef4f964e43786"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
