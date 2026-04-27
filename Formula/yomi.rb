class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.27/yomi-0.1.27-aarch64-apple-darwin.tar.gz"
      sha256 "e2ee2e9db7566601297d590841fa28d50c3c7450b5519bc5c42aec7d93968e3a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.27/yomi-0.1.27-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3d1e01612c073e2b7baca78e59f7472be92cd856dd7fd2ddd1c7353106ee3434"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
