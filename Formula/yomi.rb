class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.28/yomi-0.11.28-aarch64-apple-darwin.tar.gz"
      sha256 "1e125ae84671d83ed6d0b17fb64707ab1fac78fb9470a1fb27e14a78180403e5"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
