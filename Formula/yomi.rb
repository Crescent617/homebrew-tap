class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.39/yomi-0.1.39-aarch64-apple-darwin.tar.gz"
      sha256 "9fcd1efff1348455fbd1a64f35e112ad06e25a186ed7f487e8e13af7f5804c0b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.39/yomi-0.1.39-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3cae88bf79de7f8312dae8bd76f37522c975f30f5e6c23e563b702337280d0e9"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
