class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.49"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.49/dropstone-darwin-arm64.zip"
      sha256 "57e53fcef20dc8149a97789110447f43fe5d69c2876c7a4c8890e53c5b0c3f64"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.49/dropstone-darwin-x64.zip"
      sha256 "9e35e4eeb73b37393d29466c8bef791fe3d5c9b740c190ef1d67be23de56d265"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.49/dropstone-linux-arm64.tar.gz"
      sha256 "f192f2cfb88423687e46786a1a327544d93ce5c88b4b2d732b31157daa0fab04"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.49/dropstone-linux-x64.tar.gz"
      sha256 "c799d7ed98e0c583892a5a4d1f49dff24423e81250b510f236653a108aed429e"
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
