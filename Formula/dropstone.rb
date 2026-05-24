class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.13/dropstone-darwin-arm64.zip"
      sha256 "81191f3e6b9656af656589371b80f361869a8b75b71d64764faec5349245e4a4"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.13/dropstone-darwin-x64.zip"
      sha256 "ea62d2d0cd172aed18a08e3aba60132c72adef72cc6cfe2b40a6025c95925499"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.13/dropstone-linux-arm64.tar.gz"
      sha256 "75bda81d21027dd2266db9d7abc5ccae3f9d7784eed36b055493492cef939a51"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.13/dropstone-linux-x64.tar.gz"
      sha256 "42111af77ffe9151131317d65190b9efee4c86790b210fd650442cfb21840b56"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
