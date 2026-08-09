class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.31"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.31/dropstone-darwin-arm64.zip"
      sha256 "51912ba471885c1736d5c21f43bb8c2f449f9155ba37ada621f8ae09d89b59e3"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.31/dropstone-darwin-x64.zip"
      sha256 "6e2a063b7e20d50f3abb6737156091a5c57142f56b9d2131015150c30689b6a1"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.31/dropstone-linux-arm64.tar.gz"
      sha256 "e9cd7b4df75f3da6c4e9337333903d507f437cfd3a958c727c76c00c3c7eebf5"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.31/dropstone-linux-x64.tar.gz"
      sha256 "b6c47d1a4a8674e491c3fdb79f5200ee71f07043536f86bf4fae74a66e53f7b8"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
