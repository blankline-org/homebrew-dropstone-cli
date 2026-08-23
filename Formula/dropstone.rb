class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.41"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.41/dropstone-darwin-arm64.zip"
      sha256 "2d0f666c26ed9d4686db19721d2cbff5e244fc799c1ebef3054874e0860a0f6f"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.41/dropstone-darwin-x64.zip"
      sha256 "5d4f40411c9425b9e5e1ae4d849332da2963a5bed4ecd9d75c8f5c7422b3aeac"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.41/dropstone-linux-arm64.tar.gz"
      sha256 "1bdaca23b002f0c1f9ccee7d000afd8eb7e1447623ba19f0552749ab5f37721d"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.41/dropstone-linux-x64.tar.gz"
      sha256 "f43ae061d04a6117ee4ff2041dce9145e1c5d0f40437d686ca1e287a04af4a61"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
