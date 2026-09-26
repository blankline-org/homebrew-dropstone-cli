class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.52"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.52/dropstone-darwin-arm64.zip"
      sha256 "97a0c78f4baa81fabe37f31d112c0f87ef063142d36e65530c6e40a707253e6e"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.52/dropstone-darwin-x64.zip"
      sha256 "7322fd796b6bb52c7feb578b152fbe5d458a7d323547a36b17f431e8e5e72f00"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.52/dropstone-linux-arm64.tar.gz"
      sha256 "42b34300a428dd0c70aa8ff242539bbb8b2f0578231df55f5f83dbfa6cde435e"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.52/dropstone-linux-x64.tar.gz"
      sha256 "0f67cad02b4fa52a52a6d82d1fc9bb6b7346afb92c3dc5fcd5be4d788ddd5e84"
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
