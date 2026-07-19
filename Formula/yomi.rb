class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.1/yomi-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "eab031ad87e4bad029d07675ba39787bba36fdf4d571bc5a59f9dd732efd6714"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.1/yomi-0.6.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f6db72c8d0ecf140ae475ae17b863c4e7873f93dbb47dd987e8d57a084249a82"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
