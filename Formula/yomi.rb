class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.14/yomi-0.7.14-aarch64-apple-darwin.tar.gz"
      sha256 "9c97de4da13afb4b5a8ed7198695da54896a55eb99f5e3d2ab7b32a0e2629c2d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.14/yomi-0.7.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "80eb82d7dc3f65c540638168d68742b153f2d3fa8c888f4f245282655ef5d0be"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
