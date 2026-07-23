class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.19/yomi-0.6.19-aarch64-apple-darwin.tar.gz"
      sha256 "3ae70d3b7e7d7de327739ebeb7a97638df4d40e81e600fa0a687b9c979e66f2b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.19/yomi-0.6.19-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "49616a3e7d85009ac38fcd38388861c71954989060acc37704b5297c2c44b25f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
