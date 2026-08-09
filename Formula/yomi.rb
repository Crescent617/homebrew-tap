class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.63/yomi-0.7.63-aarch64-apple-darwin.tar.gz"
      sha256 "6749f803482ad0e1e0c804e2648292f1ecf09fb77304330b76302e1f74ce2bf4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.63/yomi-0.7.63-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f74d1a0a2c05e1530b48a1e22088ae4f9493e3cd273ae0ab559aff405e8f66d6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
