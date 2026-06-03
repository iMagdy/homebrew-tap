class Ktesio < Formula
  desc "Agentic skills package manager"
  homepage "https://github.com/iMagdy/ktesio"
  version "0.4.0"
  license "Apache-2.0"

  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.4.0/ktesio-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "518c7563f7b04af282b2ab93e648876edba9038223d40edec28a87afc39c3a5d"
    end

    on_intel do
      url "https://github.com/iMagdy/ktesio/releases/download/v0.4.0/ktesio-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "d1144bf8985d647413e6c76b4ed910a9a64cd1af55a79f671ae21014d17862d5"
    end
  end

  on_linux do
    url "https://github.com/iMagdy/ktesio/releases/download/v0.4.0/ktesio-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a962f1c265bbc4fcbc93d57b849ef833d50e77b1d0d18facea5feb4cc52f3bbb"
  end

  def install
    bin.install "kt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kt --version")
  end
end
