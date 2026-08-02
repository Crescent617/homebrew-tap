class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.40/yomi-0.7.40-aarch64-apple-darwin.tar.gz"
      sha256 "07bd5bd7659310c567a23302fa48a6e28d135f94f353019d83418d984051e34c"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.40/yomi-0.7.40-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0870c0701f979ca950c84c322329fb3ed47a7e0037ce48a15b413d0efeb3a9d6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
