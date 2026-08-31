class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.43"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.43/dropstone-darwin-arm64.zip"
      sha256 "f78f90f022afe3ebd3f6d8cf0e7427e0e58748c3f30d9679eff637cafeb4ec49"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.43/dropstone-darwin-x64.zip"
      sha256 "26e037304de7f558f3d3b853b9af84281bcb23c39ed247002972fdc9913509c7"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.43/dropstone-linux-arm64.tar.gz"
      sha256 "6913072a27f5a6231a68481adb14ddf9a1c144b0c253a62fb31c9b0de31f4dc2"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.43/dropstone-linux-x64.tar.gz"
      sha256 "328eeca2fd2187b4ab5a28db14b253ea72838e40c767ca82b5873478fdfdf296"
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
