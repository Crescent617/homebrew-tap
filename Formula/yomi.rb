class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.28/yomi-0.7.28-aarch64-apple-darwin.tar.gz"
      sha256 "b8471be44c0f91f7b2a218e3e47d5a7803759a1335824506f5a20bdc66cdab74"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.28/yomi-0.7.28-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4ae629686d58e54b959abe7f6b9cc4fa936bd83c97be25d4e7547e570dec76ad"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
