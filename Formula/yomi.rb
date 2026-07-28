class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.18/yomi-0.7.18-aarch64-apple-darwin.tar.gz"
      sha256 "c1e773bee7d0246d2263cc14f0b0e02f672237d361054559f46a88dcb550022d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.18/yomi-0.7.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8fdcbd4393f22450df1111b4762891ba6c3b33d0f864929d3c9576b717dc28d3"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
