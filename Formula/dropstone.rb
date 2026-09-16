class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.48"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.48/dropstone-darwin-arm64.zip"
      sha256 "94f557d92e7441a2cf1ed7ea68605603fb54c24d81ec6b316f7c4bba6d9cab6a"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.48/dropstone-darwin-x64.zip"
      sha256 "263718436c029ffd7ee3180353d9b9297bae538e46424123bd5658b5ba9ffe5e"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.48/dropstone-linux-arm64.tar.gz"
      sha256 "c4eacebdd5400c28882953c121cc633c78a94f953b87115389e0ed8609208091"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.48/dropstone-linux-x64.tar.gz"
      sha256 "18fc520ce1ac549f4afce60809ca1e733c53ac5421d08e1e830b97f0c9c62df5"
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
