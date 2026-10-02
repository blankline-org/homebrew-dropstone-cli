class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.53"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.53/dropstone-darwin-arm64.zip"
      sha256 "135d087cdd7b0a7952ad0a36c87adf463d4904e1e9a9fe84f86ac982d5ac0abf"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.53/dropstone-darwin-x64.zip"
      sha256 "6ed53d73a48b9f95c15dfdbca8cad0b1937efd653b4008eaca571e2b3e78febb"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.53/dropstone-linux-arm64.tar.gz"
      sha256 "f5b9afcb7c69b334df46d13dcab082a88b22852a462d6e277aecc1badd1ce7df"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.53/dropstone-linux-x64.tar.gz"
      sha256 "e2acf79b2a3585fcceb69c393ac8c80bab0709901088fb1ba354bfde88698ae1"
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
