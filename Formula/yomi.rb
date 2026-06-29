class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.49/yomi-0.2.49-aarch64-apple-darwin.tar.gz"
      sha256 "212d72985a1f4f919aed75b511f6e8d4336c90bfe3d7377ffced22e786a884a8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.49/yomi-0.2.49-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6781a7ae2c539ed4e70a0c9c16340ecbf88b39ba401fa5e5bc47243a36678634"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
