class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.14/yomi-0.2.14-aarch64-apple-darwin.tar.gz"
      sha256 "5bf52396e279c8448590b901416fbcff2b37db85386afc738b34b36d5c1836b0"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.14/yomi-0.2.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ae87e94e67ac83ceeaf0cd8043e0f81d26b1d3db6443952d59e3263f8afe562d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
