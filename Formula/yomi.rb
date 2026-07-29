class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.22/yomi-0.7.22-aarch64-apple-darwin.tar.gz"
      sha256 "e4e0df1324bed88e447e07dc812520b8fe2220ac0aa038df615e4a6e13795af4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.22/yomi-0.7.22-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "33e8e45df9095bc5c4a7ad11a84dd952401f19985df1eb6c532f6f27da1a667c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
