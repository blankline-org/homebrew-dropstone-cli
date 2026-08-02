class Dropstone < Formula
  desc "Dropstone CLI — agentic coding for your terminal"
  homepage "https://dropstone.io"
  version "1.0.25"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://download.dropstone.io/v1.0.25/dropstone-darwin-arm64.zip"
      sha256 "07740a3cd7591cdccc98fa7ebce31f9b59b071a818768fb5bb1530c37f977012"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.25/dropstone-darwin-x64.zip"
      sha256 "1c2ee4b9ed1e5e5f6c285a4d31e545b48da596cd183d5ebdb80f3b8426a1a81b"
    end
  end

  on_linux do
    on_arm do
      url "https://download.dropstone.io/v1.0.25/dropstone-linux-arm64.tar.gz"
      sha256 "6355fb8f28e04bf521f334fece425b3c127b88dbc97261aa48f395d87db20866"
    end
    on_intel do
      url "https://download.dropstone.io/v1.0.25/dropstone-linux-x64.tar.gz"
      sha256 "2a28d2284c656910d65bbf9623264136026a23be35977976002a6d73fbf0e814"
    end
  end

  def install
    bin.install "dropstone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropstone --version")
  end
end
