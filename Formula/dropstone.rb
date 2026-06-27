class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.19"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.19/dropstone-darwin-arm64.zip"
      sha256 "9b9619e14acc8a376d8f556a4d40b45f12910d86a85d542bc0eb42694577f526"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.19/dropstone-darwin-x64.zip"
      sha256 "be45e3ddba9957ff174633d59a18e002d843657746d3e50fe81c369e267d4e66"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.19/dropstone-linux-arm64.tar.gz"
      sha256 "62035a255cfe7e02230001d3a897822d1a456a32ba79fd9c0a8921bf539536c4"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.19/dropstone-linux-x64.tar.gz"
      sha256 "acbfded1c59ded5b651a6ae83fa4c0a711e6cd51b7e884694ecec024452aa9a8"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
