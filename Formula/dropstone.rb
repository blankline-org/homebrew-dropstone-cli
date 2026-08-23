class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.39"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.39/dropstone-darwin-arm64.zip"
      sha256 "37995530a74f1e2c96d35cf1f1500e6e6f44fda7a65426a772058856823dacf9"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.39/dropstone-darwin-x64.zip"
      sha256 "c62e3058c97b622f6fc59d3619778ea0d7ddfb887d8f22e0d2b6df328cfa9ed7"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.39/dropstone-linux-arm64.tar.gz"
      sha256 "a5d8241927b3100c6bc2dfaced6fd3e8908d4ccf39693f8565d5c37a06b44cc4"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.39/dropstone-linux-x64.tar.gz"
      sha256 "e7f5856b79a92c0312629c499f64f4abee165b6cac895bcded0ab9c9b2d87e19"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
