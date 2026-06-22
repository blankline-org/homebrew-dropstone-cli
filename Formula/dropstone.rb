class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.17/dropstone-darwin-arm64.zip"
      sha256 "4ca623cc2a6cfe76733144abce2e956543fda7d2ff0baaa72f9ee59636c3d73b"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.17/dropstone-darwin-x64.zip"
      sha256 "a3662fbe911972d5ae7216b5473de4015f59b142fec419cf21d7fad84ed54399"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.17/dropstone-linux-arm64.tar.gz"
      sha256 "fadbb35d99eda435dc9208c73650d05ec114701da891f2689f9d95d5717ec29e"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.17/dropstone-linux-x64.tar.gz"
      sha256 "a9cef6a40a5abc373b2c3bb464465271c883cb32dc0d63689cf7f2d555398f5a"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
