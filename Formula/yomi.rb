class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.16/yomi-0.10.16-aarch64-apple-darwin.tar.gz"
      sha256 "1629689117ca86040071808d200e8334291becd8e7bcfc406fcdd688b7d2117d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.16/yomi-0.10.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e91f062f96fa0b10fba12b22db19428c7cc8d6fafb21feb95c480c0bd415a43f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
