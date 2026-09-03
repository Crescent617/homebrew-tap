class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.14/yomi-0.10.14-aarch64-apple-darwin.tar.gz"
      sha256 "7090b3649212714b98fbba5355228dfa4a3739105fde57d1f271caa9a8b0edcc"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.14/yomi-0.10.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "01d92ea8ec573a80ea6a3e889723e3f810581b7140d8c9f267d0dfc2efd25934"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
