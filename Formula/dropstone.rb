class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.58"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.58/dropstone-darwin-arm64.zip"
      sha256 "8edac8530b35a861bc423e38488fc0f5779e4edce768265f7bba1a905e506db0"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.58/dropstone-darwin-x64.zip"
      sha256 "82b4f6b42a55145c033ad5632d587f68a0d5f8f575f564ac7acf7412726a0fbf"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.58/dropstone-linux-arm64.tar.gz"
      sha256 "0a9fd73aafa213d6cda32ad9a66fb7b623c36fefdfe7ffe9d7cffffc7e1ffc98"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.58/dropstone-linux-x64.tar.gz"
      sha256 "2fb688b1ec3c826a47a76f39ab0dd6840631ef957f75fd2ae2208cd45f3e7e2d"
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
