class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.8.2/yomi-0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "f53e18eda9f45304371f67318a572f9222856e944ce6b5f80a5095f6be178edd"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.8.2/yomi-0.8.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cd03146fb8479789174872da02bc22c3329271fcb8a920ff0f7412a911099d9e"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
