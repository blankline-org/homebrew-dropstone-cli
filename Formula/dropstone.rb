class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.59"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.59/dropstone-darwin-arm64.zip"
      sha256 "c96583779b8342954591e83f17eedcc7ac7ef322ac1f8dd5c92ed13192022e7e"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.59/dropstone-darwin-x64.zip"
      sha256 "c0ee5457b766a7dea8731de9b6a685533864f9e10696572aaaa22217fa3587b9"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.59/dropstone-linux-arm64.tar.gz"
      sha256 "fbdfa51b9848c7eae03cd0de4071a12858a574d0d222487eabb52dde3082a0cf"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.59/dropstone-linux-x64.tar.gz"
      sha256 "cee4dc715d166675140873e64e84f781202ff334e7705671800e7ad2b8761a8b"
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
