class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.47/yomi-0.7.47-aarch64-apple-darwin.tar.gz"
      sha256 "ffbca29a525ebd0843bf4d70f77e0736426248e29c40401018ecd564b8a16567"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.47/yomi-0.7.47-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "be7b72be1844c75800b479e4347f82c04266b08a65db956bbc531152ca811b5b"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
