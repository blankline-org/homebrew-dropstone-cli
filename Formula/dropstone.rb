class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.40"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.40/dropstone-darwin-arm64.zip"
      sha256 "57fa8ca2b5f96ac583e799f2e5fe029c8a84e08dadd851b386becfd111bbb367"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.40/dropstone-darwin-x64.zip"
      sha256 "d0834858126e04a7d32fb3810361843708aeb7efccc974aa04bb76b9d2c6f337"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.40/dropstone-linux-arm64.tar.gz"
      sha256 "e072eb462e1c7d250f1ed0411199d267185d35233452a20790da15f827561c05"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.40/dropstone-linux-x64.tar.gz"
      sha256 "9e7a0b4db0c81316707de5fe096b328603e8afb4bc69407d9e382d546fb2d22b"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
