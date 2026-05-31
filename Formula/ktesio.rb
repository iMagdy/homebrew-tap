class Ktesio < Formula
  desc "Agentic skills package manager"
  homepage "https://github.com/iMagdy/ktesio"
  version "0.1.1"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.1.1/ktesio-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "b74ba7cd6766b93247309a7b9839bf068621f23f14a91de26d9c00ab189de2d1"
    end

    on_intel do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.1.1/ktesio-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "7befe42fd0aead2a45521bbce85823cd3126c8e62253e0fe1468c015b18547ea"
    end
  end

  on_linux do
    url "https://github.com/iMagdy/ktesio/releases/download/v0.1.1/ktesio-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "39ce81e1c5c9d90dc8c7d14341fe7e742288bf9b22aef83aa8bdee9305080f5b"
  end

  def install
    bin.install "kt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kt --version")
  end
end
