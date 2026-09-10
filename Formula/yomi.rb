class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.29/yomi-0.10.29-aarch64-apple-darwin.tar.gz"
      sha256 "b8b8d99220325c157c9dad8fbc021dff370df9926a8cf4cefa8b674296cf655d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.29/yomi-0.10.29-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a44cd8dfa5bb8aea8cb8ed75fa6348029e511207d0138350fdca61d820b4d6a7"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
