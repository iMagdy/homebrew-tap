class Ktesio < Formula
  desc "Agentic skills package manager"
  homepage "https://github.com/iMagdy/ktesio"
  version "0.2.0"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.2.0/ktesio-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0c07237ad690f0d80c812c7296c560d580d1538c9359ad545c74086a0400444"
    end

    on_intel do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.2.0/ktesio-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e55dcc7c7cd9657f7c648b2c376f02bdab7d7c2339e97fc5f03131e8f281e83a"
    end
  end

  on_linux do
    url "https://github.com/iMagdy/ktesio/releases/download/v0.2.0/ktesio-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e5c383c87a203096bd49972834fd8041472886044d5b555910fb35bc0efe3c23"
  end

  def install
    bin.install "kt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kt --version")
  end
end
