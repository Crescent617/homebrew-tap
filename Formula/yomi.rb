class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.40/yomi-0.10.40-aarch64-apple-darwin.tar.gz"
      sha256 "ab8dcf393c66326f3cb0d49729f20a8510f99e83162cc31d0b64e8bcbcb50cbf"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.40/yomi-0.10.40-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "abaf2a8f1c8f99aca75b07fbf3a60a7ab710b1da2226b0732cae1623c9889fec"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
