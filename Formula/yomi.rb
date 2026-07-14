class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.22/yomi-0.5.22-aarch64-apple-darwin.tar.gz"
      sha256 "48dce80cbc257e15b0c399d13d8574539ba3475db3a2e40a5ade761105ecfad6"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.22/yomi-0.5.22-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1d28b8afd158ecc6f48a1bdfbcf7dc4c41aea96cf015a68814397735bb28b911"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
