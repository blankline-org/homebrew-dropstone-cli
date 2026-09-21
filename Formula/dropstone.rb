class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.51"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.51/dropstone-darwin-arm64.zip"
      sha256 "55e7e93460e4407113dd90dcc92d417b81ef2dd1a01dd0a5968471a23d521c5f"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.51/dropstone-darwin-x64.zip"
      sha256 "5aebb86f6eeb5aebc55224061f750fb3cad8c9357cb41ab01d41cd32c621281f"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.51/dropstone-linux-arm64.tar.gz"
      sha256 "3ff29c6e34e274bfd92a76d83046d2eeab32541169d932e3674392f836905f30"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.51/dropstone-linux-x64.tar.gz"
      sha256 "e797f8ca9dc47d27c88b89250f8cbd434409c3902f25342bc1ee819c249e348a"
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
