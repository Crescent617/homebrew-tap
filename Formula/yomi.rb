class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.21/yomi-0.7.21-aarch64-apple-darwin.tar.gz"
      sha256 "48369f1c85acc658205128d2ef31b150a0f0f46c7b23d290572be967985821b8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.21/yomi-0.7.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "36c596db0714c81ee75738554122545faa8582cb6e8124229ad7566b7ddae535"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
