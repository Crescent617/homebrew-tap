class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.18/yomi-0.5.18-aarch64-apple-darwin.tar.gz"
      sha256 "fbbb791e7d080d0d7b0b12f87261f807ae24cef25a0e151b59c41f3dfaae1b68"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.18/yomi-0.5.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dd0439b94595a4507ce2487c162aa036064daccd4c8bbfca7c4d92158b54eefe"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
