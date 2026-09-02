class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.11/yomi-0.10.11-aarch64-apple-darwin.tar.gz"
      sha256 "d273de1c6e7ea72eb2d62e6dd9c7285b8c7df4107f0b7ee8ebc6cbc1b75924a4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.11/yomi-0.10.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a32a7cf8677997a6956ea357ba34eb3cd2d911b281beb8ae80dba0c0db5ece9f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
