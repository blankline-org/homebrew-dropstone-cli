class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.45"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.45/dropstone-darwin-arm64.zip"
      sha256 "6eb788add895079cb321ccd7f5446437f70565e2dc9cc0514d67a7a44656f485"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.45/dropstone-darwin-x64.zip"
      sha256 "7317a00fef6070f0a5474450a976e5a290d00994aba4c65e364735050b458b45"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.45/dropstone-linux-arm64.tar.gz"
      sha256 "cb981cf2f1ee6dc024c7f44e16bf6a44e1c5c6e1068d1c5407eac2a60cf2a0a2"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.45/dropstone-linux-x64.tar.gz"
      sha256 "37dd575a525ca77a7ad22dd2e9a879ad5a15107c78a95c361e6cf7d6cf5527b7"
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
