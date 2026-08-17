class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.93"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.93/yomi-0.7.93-aarch64-apple-darwin.tar.gz"
      sha256 "1d5b7e8995c015ca59e20218945530ab9429a019ac1a2bc687a881e2d23fb243"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.93/yomi-0.7.93-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bcbca715288d0a53af1d7fac9136e6e4694d1c04f3b20a0d184e8882483ae6c1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
