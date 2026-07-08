class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.3.4/yomi-0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "8bf83467363549828ae8a0b567eedb115f9fb2d49cb71549028def9167902514"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.3.4/yomi-0.3.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "47c85f038e7b5d99deb609cc59e135deb3faa4b4ec453294d34dd7f4d501d5b5"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
