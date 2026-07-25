class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.5/yomi-0.7.5-aarch64-apple-darwin.tar.gz"
      sha256 "435d0f4fb1d2719d8f02ddf4ff5fe12524288da917c3e21f3ebdc0696b90e750"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.5/yomi-0.7.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "46a1f78ecf00ef5798289fd2c6d8cce91aad4914b57833f775cb9119127b473d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
