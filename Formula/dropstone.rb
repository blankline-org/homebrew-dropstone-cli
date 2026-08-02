class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.24"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.24/dropstone-darwin-arm64.zip"
      sha256 "49ff036d419131b456c93c9e9a50b4e314f84ae80efdb03a1ffd30c17738e4b4"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.24/dropstone-darwin-x64.zip"
      sha256 "e4a4c36044e4b266eba899bed3a3f917246e755463cb24a725db9e83ed991ba5"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.24/dropstone-linux-arm64.tar.gz"
      sha256 "8ec9c709cb44a39726c2bec6284c652244847fe26be6cfdfcbc68c406a204c3e"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.24/dropstone-linux-x64.tar.gz"
      sha256 "7e2bfbc1299eb3cfbd90805ac13cf699536468f774c2f053019948bcf32cb307"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
