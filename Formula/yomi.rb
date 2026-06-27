class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.47/yomi-0.2.47-aarch64-apple-darwin.tar.gz"
      sha256 "b4e6319d99cfa1f6d263dee0e9c4cb14d8ce9506280e1841969af110833aed2a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.47/yomi-0.2.47-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1dd3afb95eb64419b8e930cb354722ac01ff52c28ef0d73515312f5a92ba9780"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
