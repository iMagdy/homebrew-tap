class Ktesio < Formula
  desc "Agentic skills package manager"
  homepage "https://github.com/iMagdy/ktesio"
  version "0.3.1"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.3.1/ktesio-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "d72ea4a8915c9ef36a74708c25bfd9e6d9d581308ff5e3a24c055d4bce1f4fca"
    end

    on_intel do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.3.1/ktesio-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "b1e551bcf08602a84b311e7df8b4798c1ac7ea4f158eb5bffe44ac4229893f46"
    end
  end

  on_linux do
    url "https://github.com/iMagdy/ktesio/releases/download/v0.3.1/ktesio-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9aa866140c893feb342db7b278440b4c2a9d8c86a0935415bafe5d1175d9636a"
  end

  def install
    bin.install "kt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kt --version")
  end
end
