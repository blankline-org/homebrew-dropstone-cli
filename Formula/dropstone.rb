class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.33"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.33/dropstone-darwin-arm64.zip"
      sha256 "49e1797eea189bf12bb1acb8c4c6bb4405c9a2fb1c3212ee42332519ef8d253e"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.33/dropstone-darwin-x64.zip"
      sha256 "9b4eb8db75d9f755a882e058f096fbca6cc6600cc0ac5b8881123367893fd58e"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.33/dropstone-linux-arm64.tar.gz"
      sha256 "f49e6b945058260d312734fca8e3525a7b7ba59309dbb81f415871b77423fc3f"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.33/dropstone-linux-x64.tar.gz"
      sha256 "2beb30074f9058f5fe027f63a3db460fc7550ec72bfa9c7a76434985093b927c"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
