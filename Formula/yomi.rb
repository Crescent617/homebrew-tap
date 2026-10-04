class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.7/yomi-0.11.7-aarch64-apple-darwin.tar.gz"
      sha256 "64b8e60840f4adc437192fb1e70c1845ca7548fe1155914b53c3d454ed513b09"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
