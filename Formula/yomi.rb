class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.27/yomi-0.7.27-aarch64-apple-darwin.tar.gz"
      sha256 "8aa90ed64356c63d3eefea2058bef92c7ad9553f6de56ba0893f732fc2c89375"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.27/yomi-0.7.27-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "473a74854d7abf69e0d11e810634f46736956b61f311f10ff9914671ebca0a45"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
