class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.0-preview.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.0-preview.2/dropstone-darwin-arm64.zip"
      sha256 "614857f5d82a76508edd6748e7613e6127abc9234619d614e9bc07f24aeb9675"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.0-preview.2/dropstone-darwin-x64.zip"
      sha256 "abf9344cc36f510b40628a60daca72e35540aa54de7eca15d81b4c5dc67684e8"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.0-preview.2/dropstone-linux-arm64.tar.gz"
      sha256 "cfb4e220f50b71289b089946fdf44b8e04a1bad2cad30231aa64a2edf2df08e6"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.0-preview.2/dropstone-linux-x64.tar.gz"
      sha256 "324edadc86227023019c03a0f5c26068515cd05575c908915be173a05d5ac999"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
