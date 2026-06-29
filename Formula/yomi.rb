class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.50/yomi-0.2.50-aarch64-apple-darwin.tar.gz"
      sha256 "5f34da37057220353a1aaeddcf4f4120a90b1b826f899b515cb43e9b923354f4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.50/yomi-0.2.50-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6bfb3a797eace33ac0cb4ba67b38e70b60db88c37a60e33b6497b7bbd097a17b"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
