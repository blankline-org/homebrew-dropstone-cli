class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.20/dropstone-darwin-arm64.zip"
      sha256 "5fe68e1e2fd46377d755600897b3231cb5e206618ccdf4803d2a5fd1aec9775d"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.20/dropstone-darwin-x64.zip"
      sha256 "10a080275524b0e12fa7e758bcd9b49f90ff989b2bce3dd58d8240797c2dec57"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.20/dropstone-linux-arm64.tar.gz"
      sha256 "84479099fe965fc7bab952f6fa4a2781289fb3ac2b83b2651d649c8a82d0e677"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.20/dropstone-linux-x64.tar.gz"
      sha256 "385bebfa32483f1790ce7b693d1d12168e031ef0d8f6e709da456c1ad43ddedf"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
