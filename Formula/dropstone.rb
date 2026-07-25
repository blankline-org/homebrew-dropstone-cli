class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.22"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.22/dropstone-darwin-arm64.zip"
      sha256 "b4b44a497cdb9b618c7e040756aec25e984ae854d40c147349c6558c4ae937d8"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.22/dropstone-darwin-x64.zip"
      sha256 "af7e9f0123aa9f60e177dda56f84255fdefbc386eaa75dbf6dcdd440ccfff228"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.22/dropstone-linux-arm64.tar.gz"
      sha256 "f7257c33231680814ca0c940be9b3bc0c237327c338b293026081a5fb31a5b3d"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.22/dropstone-linux-x64.tar.gz"
      sha256 "44da426c57bc13d3c3176fcd308ac903375e1c319be991ecd8b91daa9a85af35"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
