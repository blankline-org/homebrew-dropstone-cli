class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.38"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.38/dropstone-darwin-arm64.zip"
      sha256 "edf7f937ab78e7371bbf3bf16b1b23a10e2cde7aba7d737a07495a184078610d"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.38/dropstone-darwin-x64.zip"
      sha256 "29be48e39b712a887aea907bebf04bb91cf0ec4ea5c680df4e5993a1f329c677"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.38/dropstone-linux-arm64.tar.gz"
      sha256 "8b7a63d23d19abb3eaae7c292bf75dc669d38648dc4808ad9ca2d4b11b23adb0"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.38/dropstone-linux-x64.tar.gz"
      sha256 "5615dbca3b3e3384494108f2354b5e976f8d7f01ecebfe7432d3943946b4d1f8"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
