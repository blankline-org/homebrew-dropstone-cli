class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.28"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.28/dropstone-darwin-arm64.zip"
      sha256 "3c9f13864b8c6bcd81d352cbcc4be2f52be4cc657021f154ef090bafea87d63d"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.28/dropstone-darwin-x64.zip"
      sha256 "0c758cdf776db5024d5dc8630c19636bc86eeef5f64b5058584524e81f3675bc"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.28/dropstone-linux-arm64.tar.gz"
      sha256 "198f8bab7bd2ecbbb6843db822187feb530113d30234536533839cc4a2c85640"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.28/dropstone-linux-x64.tar.gz"
      sha256 "5690be68765c567c90e78c0a5b6bf1846763c57088c15dd1e39326411f4f9a55"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
