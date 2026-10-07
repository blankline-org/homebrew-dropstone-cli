class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.57"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.57/dropstone-darwin-arm64.zip"
      sha256 "ead6e03ae2850e6f3c2c61a7af1a0e2d137e6eaf8dcca38304a9552c826c69dd"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.57/dropstone-darwin-x64.zip"
      sha256 "588c76cedaa1fe27d5d87e7ad3df48dbeba7c4e395312f4853cfa74bf5ad798a"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.57/dropstone-linux-arm64.tar.gz"
      sha256 "4ec1141a1609a05e0a19b7f67422b8222c6fadeaa1d93fc5ba1fe7abd02da59f"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.57/dropstone-linux-x64.tar.gz"
      sha256 "bd81a65029de4d98af02e696fbdcfcc0b5feced37b5e183472376e7f7d6c54e5"
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
