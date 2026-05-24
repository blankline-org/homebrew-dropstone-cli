class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.11/dropstone-darwin-arm64.zip"
      sha256 "c2511f12ceee5afe275055c395fb3a81c30ed0777db1c5d989c2068e8bc19bb4"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.11/dropstone-darwin-x64.zip"
      sha256 "590d55e18ca2ad0635c6f6b319d1ee70b098d5ee4123822129dddb11d2142f9c"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.11/dropstone-linux-arm64.tar.gz"
      sha256 "74478ed9a36371bdc49d9c9a9d735cd0ffd8f2c822c55f6f2e128994bfd5a04c"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.11/dropstone-linux-x64.tar.gz"
      sha256 "266aac7c93513e522f1c0cbe7d69478d1f131e60d45fd78193823c634c5d7552"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
