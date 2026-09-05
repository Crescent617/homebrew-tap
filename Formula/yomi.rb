class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.21/yomi-0.10.21-aarch64-apple-darwin.tar.gz"
      sha256 "e742a38efcc00ca22b38dc7e9909eade9a42f85528ab1c9c190874d61da69da6"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.21/yomi-0.10.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0bb56191505e9b0cda87e33490b1573aedb46ae7ce9d0f6b286d42a40ce842b3"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
