class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.37/yomi-0.10.37-aarch64-apple-darwin.tar.gz"
      sha256 "ae54c0a28f7dbaa9c4f21f7ee7f13f35bdbcb0602db573f76eaee6ed8952fe43"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.37/yomi-0.10.37-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1ef24b6835fec49f25075afbb8e643d08129df4a20b7a0aa368da163c01331c7"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
