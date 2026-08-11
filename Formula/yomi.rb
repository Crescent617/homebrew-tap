class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.71/yomi-0.7.71-aarch64-apple-darwin.tar.gz"
      sha256 "ef8be25685ae87b9f2d59dd4ca1f040f19f1c0669e865a85a7572f4687c6ada2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.71/yomi-0.7.71-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6650ea67312db0c21c2a639737db7e0db76b766337f7ea8538752d2d243c9ad5"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
