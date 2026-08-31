class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.7/yomi-0.10.7-aarch64-apple-darwin.tar.gz"
      sha256 "525e50a6e813fcfe1c546e2e314b1317052302c543b2f263c8fd4900dcae7924"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.7/yomi-0.10.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bafa933b385d414769cfc56c0116a411bc3cc49b72aa0af3c7b04534b04b0785"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
