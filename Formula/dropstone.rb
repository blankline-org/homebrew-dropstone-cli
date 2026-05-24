class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.12"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.12/dropstone-darwin-arm64.zip"
      sha256 "d33dafb33cb7ec61501be2d5ff87e67df382821e0c7e2bf4ebae1a096bc165f4"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.12/dropstone-darwin-x64.zip"
      sha256 "2d99c1cb509bb9f7592486ddedea1b14c2ab00de57a39fea6b0d828ca81fce1c"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.12/dropstone-linux-arm64.tar.gz"
      sha256 "b3e106186e6def492de9b232487f3c6adbc1d74e63cbcf4255fa89f14388aead"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.12/dropstone-linux-x64.tar.gz"
      sha256 "4e95be0784a60089eebd968504679dd00bdf11c40e9c8b4837630767319db36e"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
