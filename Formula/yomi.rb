class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.45/yomi-0.7.45-aarch64-apple-darwin.tar.gz"
      sha256 "ef7ae796426ebf173e2b243cbbf1b8c60389fe206a9d6d957f6566ea9b983ff8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.45/yomi-0.7.45-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ba79b7bb5ab832fa4b972b87566a798c1b81f13702f713ef142832b00aafb483"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
