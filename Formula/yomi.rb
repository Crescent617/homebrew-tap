class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.3/yomi-0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "11e9cff264e87e50bf82b094cb608fa2f3220ae13c88a82789c35d61f58deb6e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.3/yomi-0.10.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0dbe4466074d1e7fe7d817756ce5f9d54588d0d3fbce1e738b669143d8e33d45"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
