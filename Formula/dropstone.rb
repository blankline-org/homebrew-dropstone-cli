class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.16"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.16/dropstone-darwin-arm64.zip"
      sha256 "86c0041bbfa6f72a6e2b04a332ec583ababa94f2a60e4f2830fcec5556f719e5"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.16/dropstone-darwin-x64.zip"
      sha256 "6d2a4bdf0f260863d8140f6c7d553e826ce3d7bfdd25c7519be8459a9064ca0f"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.16/dropstone-linux-arm64.tar.gz"
      sha256 "9a2814d4236b0965d2e5ce4fa9fa6b392dae9376d3d421d0f4ed8213f9f9bf38"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.16/dropstone-linux-x64.tar.gz"
      sha256 "c0d36744106d921cb0d78b41d0182b21f3605a78eb83d12238a35b978485eb26"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
