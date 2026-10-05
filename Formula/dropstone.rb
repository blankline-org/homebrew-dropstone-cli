class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.55"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.55/dropstone-darwin-arm64.zip"
      sha256 "de42438713cc54c9ce20bd8daf429c5905a76b75ea41e30ecaaef2d298351813"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.55/dropstone-darwin-x64.zip"
      sha256 "4177cdee120d7901fe098d4efc889177e5d501dfac19226a55be214bf970271a"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.55/dropstone-linux-arm64.tar.gz"
      sha256 "9ffcfd5e8441e4eb5488106896eb5501afcafa35f315198f44ca7a7a1c5e3306"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.55/dropstone-linux-x64.tar.gz"
      sha256 "29aa1d169250956e5bd64f0b0a7bdf6b0fe85df07a250194821c1de0e5d642df"
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
