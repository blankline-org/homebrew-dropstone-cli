class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.26"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.26/dropstone-darwin-arm64.zip"
      sha256 "03e102c31eefb8111453f93e940b63e3c4db7b6183de61a90e952d836da29d90"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.26/dropstone-darwin-x64.zip"
      sha256 "2c54e0d06c6b54ce55909f5923d2476e11800b66388e65fe2a524ce4219960c8"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.26/dropstone-linux-arm64.tar.gz"
      sha256 "5eb65141d1a2329d960e9614a6d70515102a841ac00d29c7bdd74c2046da71f4"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.26/dropstone-linux-x64.tar.gz"
      sha256 "3bab46c705102b89399ed9d137b900bd4953624fbcac0d82e3d1b27d67aa4159"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
