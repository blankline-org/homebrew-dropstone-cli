class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.2/dropstone-darwin-arm64.zip"
      sha256 "f62694264e0be28d26ec38c04f087119910da1a35c49fd9897357d508ce548a2"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.2/dropstone-darwin-x64.zip"
      sha256 "8876b891f5a54079741d869c4a3e0e22299ec3c68d0076ed0d618096f453e420"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.2/dropstone-linux-arm64.tar.gz"
      sha256 "be8a27d01933509cafd4992d68485beb3dd734ee35cb4f267b05468a5aa86da6"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.2/dropstone-linux-x64.tar.gz"
      sha256 "d6ce015d5d0758c7718a3d08ea09893147e7420e86dbbfd021b1440c06d41a23"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
