class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.35"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.35/dropstone-darwin-arm64.zip"
      sha256 "28222d25c223248bf0a78caca5caaa225cadb21b8618aa3289ac1bb47a6efd55"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.35/dropstone-darwin-x64.zip"
      sha256 "0b7dcf0754fe364e394ba21a422feab2aab2f2420f8d4d640f9f8ff0044b8dc4"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.35/dropstone-linux-arm64.tar.gz"
      sha256 "0143924b9036146a92b9a31df621ca0cece4ef8f8cdeae07bf2fcd0d1f247d2e"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.35/dropstone-linux-x64.tar.gz"
      sha256 "6ef3b4de89247d8e6583b981dc2430c8847b4770bba5fe399d89db9c4dca501a"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
