class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.18/yomi-0.10.18-aarch64-apple-darwin.tar.gz"
      sha256 "a1be6ecd41bb7ff5d21caf507bb9de16879f2b2c4479743830c442bc04f998c8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.18/yomi-0.10.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bb3e1b1e4a2c2e1438c737a703ce67cd342f6f77dc52ba9ea8573a0a7d75b5bb"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
