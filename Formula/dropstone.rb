class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.1/dropstone-darwin-arm64.zip"
      sha256 "c3a1018647789884eab307669da166db7eac9faf4a2b823a379f69f00c19a040"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.1/dropstone-darwin-x64.zip"
      sha256 "01c1a00ac377cf63e2c4685103ae28a15f530c9772fa88572e5539b2ed451964"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.1/dropstone-linux-arm64.tar.gz"
      sha256 "ed2de27009d05ee51fbaf940bacdc0d6d8f8128fe095c6a212cac6350af90cae"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.1/dropstone-linux-x64.tar.gz"
      sha256 "648360854accad33da7f73079fa4d88cc6fc47cf41037ce8feb259b0214a5798"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
