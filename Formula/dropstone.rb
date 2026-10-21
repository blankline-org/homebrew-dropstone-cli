class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.64"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.64/dropstone-darwin-arm64.zip"
      sha256 "0533ec17af30cd48d3a729c2e98e89f2b56894990c101cce840ba924610183c3"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.64/dropstone-darwin-x64.zip"
      sha256 "07a4fa1f54a955a65c1388da197220ce0d718a8c7d794678fab13f9b1246a9d6"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.64/dropstone-linux-arm64.tar.gz"
      sha256 "57a0b809a61cd735d83b0b97ae019ba17800e07f3c534125be23be8e4191e798"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.64/dropstone-linux-x64.tar.gz"
      sha256 "96d35162530d4a9cfa793da31fc4481bf3b25225fc4004d5e60562537be9efd2"
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
