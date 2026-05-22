class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.4/dropstone-darwin-arm64.zip"
      sha256 "f469dbb6775414f1249a751224ded0edb8f550ca6f017fbf8e78bf52ad97a0c9"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.4/dropstone-darwin-x64.zip"
      sha256 "60dad1442c5f7c93d191c19b3ea54075563c9a6b868464d0f699737356089e8f"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.4/dropstone-linux-arm64.tar.gz"
      sha256 "c2a1076aeaecd0adc01b70ea97b7266500ec79e9dea875da4683820f05f33abb"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.4/dropstone-linux-x64.tar.gz"
      sha256 "0f8a0c123ef8b46ba326060e6583450177476eec75f8464ae1513a8b7ba17907"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
