class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.34"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.34/dropstone-darwin-arm64.zip"
      sha256 "19cfd6cd32a2a7be4b2271ed707b82597d6894bf8f63544f2efe2bf15b92233c"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.34/dropstone-darwin-x64.zip"
      sha256 "cf8c407b3b5860e24f786ab1e1b22d7c5c338f04f80104e04f7c1f4055319a13"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.34/dropstone-linux-arm64.tar.gz"
      sha256 "4d132290214ad57d76675b0d200473d0d230c232bed8cd2d94c2bad1eca1916e"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.34/dropstone-linux-x64.tar.gz"
      sha256 "bc01fe151772ab4cd57f864f6185c4088f549fd353e83c562dc801dcb7ea1a0f"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
