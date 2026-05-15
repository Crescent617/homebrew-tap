class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.16/yomi-0.2.16-aarch64-apple-darwin.tar.gz"
      sha256 "f1f8f483f77726835300155ac5ee1c9c9824e723fd30bd67ec792f478fe5df1e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.16/yomi-0.2.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "559d27cf899104ca77655b7ef1dd090cf369e8e98ac11da0d886c5e073989970"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
