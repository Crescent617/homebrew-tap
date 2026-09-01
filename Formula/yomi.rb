class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.8/yomi-0.10.8-aarch64-apple-darwin.tar.gz"
      sha256 "e8b81b8a788cf4e5bf641ce8e94e0d751d2345f475445173c8157a0f0df391a1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.8/yomi-0.10.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "657f8c5d1fc6bacab476e5f0d20c0a483a6d75bd20833b681f3ea1c50cdc6556"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
