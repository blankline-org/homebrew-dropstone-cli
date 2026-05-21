class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.0/dropstone-darwin-arm64.zip"
      sha256 "f87e98eb2c1fb46814eb1532287f4d13fd71e0dea2f911601ea79abec0c0134b"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.0/dropstone-darwin-x64.zip"
      sha256 "55bee81fafb8c5f68f5a7e906f31b3325ed249d8477d2b3acfc7739870783cca"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.0/dropstone-linux-arm64.tar.gz"
      sha256 "b7555c6a2e389803f43d783c728abb163007c4c78ee9e658b07fe6dbd196cab1"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.0/dropstone-linux-x64.tar.gz"
      sha256 "820fc5a575775aeaec86513ec43770b6b223a72c9b1f46d5310f50ae505df0a9"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
