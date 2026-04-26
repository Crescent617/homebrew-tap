class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.21/yomi-0.1.21-aarch64-apple-darwin.tar.gz"
      sha256 "bd50338a772ad2289c1a5b928ba7856685739b6c6366be3b3f3d39c72dc3821f"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.21/yomi-0.1.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4b73b6288036dbdff8b780c143fcad6657c513211c5aa0d44a97fa20aefa9ac6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
