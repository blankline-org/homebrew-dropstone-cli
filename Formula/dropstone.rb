class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.54"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.54/dropstone-darwin-arm64.zip"
      sha256 "78b71866677679becdd60894085936cf19b37bca6e3f8b5f6a6dd8070513e197"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.54/dropstone-darwin-x64.zip"
      sha256 "e30b96b3fe32f6051c86501f821fd5b277c0e91fcfa398a6bd5fe34b5f6c2988"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.54/dropstone-linux-arm64.tar.gz"
      sha256 "e211083c4abc815c44e211f76dfe86c4445307731cb66c6a7c296cf0e16e17e2"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.54/dropstone-linux-x64.tar.gz"
      sha256 "6ef7b8a47a39c5c6ddb2a1a823f97202baad230dfca6569d25206b5047b41fa1"
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
