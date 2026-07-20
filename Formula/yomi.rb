class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.4/yomi-0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "ad21dfe37338d38c035fe42f41aa666880709c09dd8ba1dbfea4b21c4663cd24"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.4/yomi-0.6.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a8e6b1ab4dc1e1f52193fa2f75980aee8fdb4d27a36a34e4b1021c31c07dc5cb"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
