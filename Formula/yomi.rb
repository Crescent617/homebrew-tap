class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.0/yomi-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "77d75ef78201a30550b3b974bc7803dbed077439caf4957f83ab793ca9f3d2fb"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.0/yomi-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "78afc90b0391636ba0a93f3119a289da09255545f4dbb913ef2ea44fc3e0f09f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
