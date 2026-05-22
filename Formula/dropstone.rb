class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.6/dropstone-darwin-arm64.zip"
      sha256 "c7c2b374de17631e08a9c4d4518d9a0dcf838171ac1e90faf43b3ee27798446f"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.6/dropstone-darwin-x64.zip"
      sha256 "162b912e806987893eea7693fc43e1e237e735c8f5749d9e948010c5ee7d0ea8"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.6/dropstone-linux-arm64.tar.gz"
      sha256 "e29abedb7730bb0c99f09b521b4af2d9ec506ae09ec2811b6f1c91badfc45194"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.6/dropstone-linux-x64.tar.gz"
      sha256 "41e880f678e44394445253df6ff8801c44552ee0bcac0f68d6d70670c6b33aea"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
