class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.13/yomi-0.10.13-aarch64-apple-darwin.tar.gz"
      sha256 "78fdda7713a964bdeef6d16ea1d11db6ca72dfd45b68d278dfdf428a67794320"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.13/yomi-0.10.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "747cc79e115a8278e072addbe7d4d167f019186ccba67d722e2fb81d945cab0f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
