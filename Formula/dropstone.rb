class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.23"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.23/dropstone-darwin-arm64.zip"
      sha256 "76fc920e16887b7413a96335f8f931e682c71685bafe446351f6160366c88dfd"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.23/dropstone-darwin-x64.zip"
      sha256 "dd5aded17f4ab1763b573d64d0766894982eaa27c88b3034a8cc3932eb0284e5"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.23/dropstone-linux-arm64.tar.gz"
      sha256 "2b088c035447027b98149fe41565426c1ce2cd7f2bdb1e175de911a4c0344d01"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.23/dropstone-linux-x64.tar.gz"
      sha256 "2d0bd31764a9d46a6379279f6c055bfeb2945c0a5fe79171305e9d09db374e8f"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
