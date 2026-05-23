class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.9/dropstone-darwin-arm64.zip"
      sha256 "f955eaf090d190ff66ff1ac6507896de302c7474ecda4d220ea5ade4bacdf3f8"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.9/dropstone-darwin-x64.zip"
      sha256 "a6d1e66b23eede909e8c2205035bb8fa9e598a07804ac386926cb6c12347b5bd"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.9/dropstone-linux-arm64.tar.gz"
      sha256 "131b598a09896576ff8dea84b4238573fb36fb01a3820e54f2407cde7957e5ec"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.9/dropstone-linux-x64.tar.gz"
      sha256 "76f1ecc49fc590fc6f87536720b010d1f2f8d39a822e899754b79685aa259576"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
