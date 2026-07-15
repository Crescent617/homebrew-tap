class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.26/yomi-0.5.26-aarch64-apple-darwin.tar.gz"
      sha256 "e37f18323e32ff14e3efcd25cc3cd8eddcf650629aa4a01771fec6c2cb95175d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.26/yomi-0.5.26-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "38a42426b3da816443576cce085d876793654d1045397d280c1d5f54a6ad8ec0"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
