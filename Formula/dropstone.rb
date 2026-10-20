class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.62"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.62/dropstone-darwin-arm64.zip"
      sha256 "0cf739d115511f622bedfad2543e8e144bbfdfa6be5e2c2e9c18212f958b1fd0"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.62/dropstone-darwin-x64.zip"
      sha256 "a31ccb080d2c680f12ffe64edbc0427f7cb6bd262bb88df04c9d043184eeeae6"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.62/dropstone-linux-arm64.tar.gz"
      sha256 "3135b16f206500d3e74754594fbac0c105a6efdbda930230b73f6d932e995b73"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.62/dropstone-linux-x64.tar.gz"
      sha256 "6b8e372789227018a6943c854585a4b5f18fa81d09cd7ab91398ec5059873daa"
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
