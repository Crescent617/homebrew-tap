class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.66/yomi-0.7.66-aarch64-apple-darwin.tar.gz"
      sha256 "0c0981d8dfee35ed6f59f96644de9305d02b283acc01e41e058433afd1a8caff"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.66/yomi-0.7.66-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2ba89892d98f3bd0724fb70e85d0acb0f43a4074c2c19642e967b9bb06254f04"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
