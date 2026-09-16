class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.46"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.46/dropstone-darwin-arm64.zip"
      sha256 "347c90879b4abf4ccc075fba84872b6dcbc2b521bdab12be1e51fee87a14c7c8"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.46/dropstone-darwin-x64.zip"
      sha256 "73c63af3e5ef833f35f621f58ab6e537c3b55cc52756427977764f06142a78df"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.46/dropstone-linux-arm64.tar.gz"
      sha256 "7eea80e0473f87bf4115fc5dbda9224d89f248899bd0970dd0e7c905d48f54dd"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.46/dropstone-linux-x64.tar.gz"
      sha256 "30f2f5da1a88ec9bec47f7bacf664a5fceeb127ded6a3040c04f7eecf92a1c39"
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
