class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.18/dropstone-darwin-arm64.zip"
      sha256 "4f43b0916fdd8871426b4851cbaa455a1a27ec5b2c09619ba502fb04ecc0facd"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.18/dropstone-darwin-x64.zip"
      sha256 "5466b17879210039a78495450423f27bd7ea7daa3c5edef6c45e0ae88e656139"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.18/dropstone-linux-arm64.tar.gz"
      sha256 "91b9fdadc5b210f70c9e0c41f4b866bbc43f15676aea54035d845ef5bf7fdf48"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.18/dropstone-linux-x64.tar.gz"
      sha256 "f727ec345ae2da277e71fb54a5ad6e47234a2b1b27f8aa3048cf97e425619638"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
