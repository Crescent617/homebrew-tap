class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.5/yomi-0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "19faa0709386a00236ca04a5e0b995d62d431003d568f9b7bc7cba9e51328531"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.5/yomi-0.4.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a3900e3a99a231e3f4283e53cadde65b46a90fbb0dafb8c3b1a84219815e15fd"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
