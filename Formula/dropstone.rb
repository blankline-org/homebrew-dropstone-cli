class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.56"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.56/dropstone-darwin-arm64.zip"
      sha256 "bbc9b463b6f5c6f948db0a51ba4ef8192a2d366ef0e96dacc4e403a792719e70"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.56/dropstone-darwin-x64.zip"
      sha256 "f2d8d759f72196daad968b2857f07c0c59bc68c474b34ce1a8121d15e3d594b8"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.56/dropstone-linux-arm64.tar.gz"
      sha256 "7be15a2b1a093a5678af3e0c3b8352d2be30b9dfec3205f3d96aa4fdcbf5eb86"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.56/dropstone-linux-x64.tar.gz"
      sha256 "acaf4f55a7ef678442f9b0f8f66f3afe8b1872347be4e75fa8f29f70ea394744"
    end
  end

  def install
    bin.install "dropstone"
    prefix.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
