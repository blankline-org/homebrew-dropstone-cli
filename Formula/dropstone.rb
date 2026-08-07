class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.27"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.27/dropstone-darwin-arm64.zip"
      sha256 "15144e27f4451e5859da81c11f34fbba7147cae88257099e34ac003f6929629b"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.27/dropstone-darwin-x64.zip"
      sha256 "92cfea78ddce89d8d8b573eaec61bb569ee3f3e91e3c66b12b6d6477c11dd295"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.27/dropstone-linux-arm64.tar.gz"
      sha256 "7c91c716ea66ee3373a1a21c5d9314107bb91ceaff1a94486f098b2864c37a9b"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.27/dropstone-linux-x64.tar.gz"
      sha256 "12abd2b0158e3ff7765af36b49f4013edaf87ae3fe8610fab2094a1463f1769a"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
