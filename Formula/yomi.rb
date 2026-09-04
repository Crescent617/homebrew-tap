class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.19/yomi-0.10.19-aarch64-apple-darwin.tar.gz"
      sha256 "b614690167214a6ee291e2547ac6e3ac5aa8cbbebed43ba3bbdacf4aaec93284"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.19/yomi-0.10.19-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "51e4ed0cabbb580b6713afeaf40991efcc8c3c6694997ea47960c67e9e205019"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
