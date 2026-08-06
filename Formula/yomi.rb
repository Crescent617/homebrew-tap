class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.55/yomi-0.7.55-aarch64-apple-darwin.tar.gz"
      sha256 "13f15ef57e4a16aa8f514302ab29783ba4491a50f247c751b458d267645a921d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.55/yomi-0.7.55-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "517ed49acd5d11f240ba0dda5bc2a25c1315a81a0ea78186d03040bd327d3e91"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
