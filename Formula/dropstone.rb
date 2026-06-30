class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.21"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.21/dropstone-darwin-arm64.zip"
      sha256 "77e2f19f767cd57329cca4dc00a4f4c675a9611f484541b5d13afc8f671685bc"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.21/dropstone-darwin-x64.zip"
      sha256 "bb1a1977f1703e6adcd74ab37bf2ba76731100c53c920fa6a7b582ab5f7639c8"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.21/dropstone-linux-arm64.tar.gz"
      sha256 "d9bdd4af1220f69350aec2a1fc8ac9325ae6a75d90099d3a3d20598e3854f357"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.21/dropstone-linux-x64.tar.gz"
      sha256 "d1360d1e9d3a0ccc211ab5b8c1caf774db0cc9148882c6fd51d9888ac44ad519"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
