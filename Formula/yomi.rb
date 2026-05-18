class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.17/yomi-0.2.17-aarch64-apple-darwin.tar.gz"
      sha256 "68d049b2d75068dd1884f78bc901278cc5262367ba477e4b2476b68923e82cd3"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.17/yomi-0.2.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e88b9ea6d76007e44681d77e6ea4146a5d9131d1eb29512120c3466de94786f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
