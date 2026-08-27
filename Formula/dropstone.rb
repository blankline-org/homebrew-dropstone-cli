class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.42"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.42/dropstone-darwin-arm64.zip"
      sha256 "aa255269c240234308ed1f49530239c2901c9b36aa7d89bf76feb037ae109f2a"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.42/dropstone-darwin-x64.zip"
      sha256 "6e56a4323e8834f1aec556e617b8870cb9470fa8565e81cebf4482cc21da5887"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.42/dropstone-linux-arm64.tar.gz"
      sha256 "c2a4e9a7c8e12f5f4638f00de27d4aed20af5b11397e5753571bf08d74a6a00f"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.42/dropstone-linux-x64.tar.gz"
      sha256 "ba4ce9a71823388a32ee7ba5ab7033f56654882962e070fa5e89a2e1a9547a97"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
