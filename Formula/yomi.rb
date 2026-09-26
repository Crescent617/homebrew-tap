class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.46/yomi-0.10.46-aarch64-apple-darwin.tar.gz"
      sha256 "efeaf94613b396fb0a8aaefffdcacba5d9b1e08c5530de73f300561c98edd681"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.46/yomi-0.10.46-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9bd3fd60b25c188470e98f59ec46f0189c7182afe21291ae0d1fe18c2ba0b788"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
