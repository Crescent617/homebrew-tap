class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.1/yomi-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "96e80c6d8565ce5ace2decaa783913ab75410d133083df492d8a7e159ceb694e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.1/yomi-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e6dd8b4ea6a2170d0fbf8ec996d3e7addd7626fd1f049aba192fd32fe9492cce"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
