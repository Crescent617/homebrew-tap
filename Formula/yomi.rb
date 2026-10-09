class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.8/yomi-0.11.8-aarch64-apple-darwin.tar.gz"
      sha256 "811e0567f520661986475da3275599249645bcc9f8e8b5cf79e887c6cf252a81"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
