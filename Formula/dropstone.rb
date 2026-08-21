class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.37"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.37/dropstone-darwin-arm64.zip"
      sha256 "3f35882c0e2117ab49fce1baba022fbb632510d4d8a29702565b5c07790f7a8c"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.37/dropstone-darwin-x64.zip"
      sha256 "f526af0f7626f7aec28114f0362739af403909d55d3816bb3663b281051f8f79"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.37/dropstone-linux-arm64.tar.gz"
      sha256 "cdd515db7d8d6cffa20f6d09869c157198f1c3f55d51ff330a195c4ec6e7e437"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.37/dropstone-linux-x64.tar.gz"
      sha256 "6452560381dcc92793d79feeb4a5c5af10391fbe7e78be7cdff7dff610f1ab2d"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
