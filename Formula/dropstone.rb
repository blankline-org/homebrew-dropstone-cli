class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.3/dropstone-darwin-arm64.zip"
      sha256 "2ac7e6c7a29da914629cc195ef1f7bc4d9df3c59f5a40ec30ec8bd7d713e14b6"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.3/dropstone-darwin-x64.zip"
      sha256 "1b9e1c05ad8a7d61ccf21c930c5e080059437ef671629e751307f1687aac2a79"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.3/dropstone-linux-arm64.tar.gz"
      sha256 "e9ec1733810bccf8bb9b199fe3d7024106be1aa89487f58eac4afc54ded746e8"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.3/dropstone-linux-x64.tar.gz"
      sha256 "2d43798cb1dfc4dc9e756efe5f359d68c06512d206a18549b23b2fd591c881e0"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
