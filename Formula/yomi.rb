class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.14/yomi-0.6.14-aarch64-apple-darwin.tar.gz"
      sha256 "e5263991f6b74c21fe78fab210d7459d5a62274444d9b1c550244665a4ee21ef"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.14/yomi-0.6.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7e80c735470d271a06effce89b349335ea71c03a7b355c516092de683c9cb52c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
