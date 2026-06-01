class Ktesio < Formula
  desc "Agentic skills package manager"
  homepage "https://github.com/iMagdy/ktesio"
  version "0.3.0"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.3.0/ktesio-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "6cf2bd6e6abfc2c380d37f9640677cd34240d1b0f738b5657e6ba83f170a8a35"
    end

    on_intel do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.3.0/ktesio-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "218885d0971b087e3586ae677a685fa4883915674307ce354c717eb48115b49c"
    end
  end

  on_linux do
    url "https://github.com/iMagdy/ktesio/releases/download/v0.3.0/ktesio-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dc179b23cf219db03bd7b9389edfc2ab9f566aaf358c901051897c3e18b463bc"
  end

  def install
    bin.install "kt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kt --version")
  end
end
