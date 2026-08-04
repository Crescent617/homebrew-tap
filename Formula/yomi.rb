class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.44/yomi-0.7.44-aarch64-apple-darwin.tar.gz"
      sha256 "bc9c7f668b902c73fce585917aa9b05dd6bf4fa7af6834590ef062384d66ee7e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.44/yomi-0.7.44-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "608648f8c3655d78a075201e3bf1bbbad75f641143edeb33ca8a488a0181b11b"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
