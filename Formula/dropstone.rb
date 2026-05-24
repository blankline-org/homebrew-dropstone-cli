class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.14/dropstone-darwin-arm64.zip"
      sha256 "4cbc3eafb5f376d305fea7bf017f0653adf9906bff31db12ee4109e97c32b364"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.14/dropstone-darwin-x64.zip"
      sha256 "6e3170140b06384442e55c45482204af5f382178bd8fdc2703cd621988076057"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.14/dropstone-linux-arm64.tar.gz"
      sha256 "05f1ea4a3d153e9347aaef139bcbea6b1291787ca007973241d39a0af65b1529"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.14/dropstone-linux-x64.tar.gz"
      sha256 "1ce94e5498fad247e723cba9b98a0727fbdcd49ee2ca20bc0f002b4c4f31231f"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
