class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.17/yomi-0.1.17-aarch64-apple-darwin.tar.gz"
      sha256 "01a40044e496e4723e2ea7afc75f32cce1466454f8f9fee9222489ee15087964"
    end
    on_intel do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.17/yomi-0.1.17-x86_64-apple-darwin.tar.gz"
      sha256 "931323ad2f7046d12aaf9f812ca61dae2a3895dbe99827770ed1aadf2b221c2a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.17/yomi-0.1.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "da77f47ae29af3a6f56340d39743991e9677faed62ff0b3a79bd5351776f1fb7"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
