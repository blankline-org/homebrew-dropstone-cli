class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.8/dropstone-darwin-arm64.zip"
      sha256 "130728113333c572521dd4f0296b92cfda1bbf8e3e1b05c66a14fe4487043cd2"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.8/dropstone-darwin-x64.zip"
      sha256 "70ddc464727d8629c8c2d5eab2c0cc8598f3aae107186f7d42d477e1f7ce3232"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.8/dropstone-linux-arm64.tar.gz"
      sha256 "0cb04dc57bc5fa3d1a05203fe577b452ca28a518203b631eebafdd7325fa1586"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.8/dropstone-linux-x64.tar.gz"
      sha256 "23828ae90c3b124eb019b23ab0a91ffdbac429f95f87c7456c6e478824efbf2d"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
