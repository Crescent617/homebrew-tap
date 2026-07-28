class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.16/yomi-0.7.16-aarch64-apple-darwin.tar.gz"
      sha256 "619a47eb434356f20c489abde9f1374c40e5138fbd475622b1353632c9436cd3"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.16/yomi-0.7.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4fb79a6aa82e6bfd95b24dad461092618f4d64fe87a1ff8d85121d55e49bf6f1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
