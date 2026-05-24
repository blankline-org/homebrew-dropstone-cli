class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.10/dropstone-darwin-arm64.zip"
      sha256 "4e017cc5856d5f8c3c43340f54a0f232e806d1b1b014069e008a6f26997ed91f"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.10/dropstone-darwin-x64.zip"
      sha256 "72ff5743a7d06b84849c0d8fc2a7dedadb41e72eafb2b86fe852c4b0b1171c57"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.10/dropstone-linux-arm64.tar.gz"
      sha256 "ba7c39f4b653341c79c6cfe6f731220b035d301aebcfa1d96912ab0f5527a8e1"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.10/dropstone-linux-x64.tar.gz"
      sha256 "4448d100601c9421db220937c87d56a40ccea8522391096e6d2bc6ccb33d4a3f"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
