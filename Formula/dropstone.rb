class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.29"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.29/dropstone-darwin-arm64.zip"
      sha256 "d370b7d493938190c0591aa41735abe0278018612db0c5e009654a2bec10f22c"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.29/dropstone-darwin-x64.zip"
      sha256 "eae60f18dd75a89b7d682cd0a9ab40bb562f7bd20f6999f1de651af3efaf1d13"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.29/dropstone-linux-arm64.tar.gz"
      sha256 "6d3becdecc0259875eb44a431e8c58407c58f3b7db6bbc4956d2a32f51d50802"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.29/dropstone-linux-x64.tar.gz"
      sha256 "5c7b98279265a8178e5341521ca0d5f4c111903368c5de8f5e3d829d3381cbec"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
