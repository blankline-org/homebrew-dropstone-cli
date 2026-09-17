class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.50"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.50/dropstone-darwin-arm64.zip"
      sha256 "8d5a1e19d2838298cc0add55c108827d9c04fe352c252a268a8327e2e9f1dd2a"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.50/dropstone-darwin-x64.zip"
      sha256 "c93750f2791cb6d8bbd7935d5b9e4e06cdf3b8210ee9c5ea643e35be49155777"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.50/dropstone-linux-arm64.tar.gz"
      sha256 "d97b20942d7a95f1962dc6648ba1f9435ae5442c239733647b75eb754e32ab0a"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.50/dropstone-linux-x64.tar.gz"
      sha256 "9215ac94b398ee78695efe2c1246473543bdad71d8fcc2ee7f75912cea4ab09f"
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
