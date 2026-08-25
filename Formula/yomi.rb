class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.17/yomi-0.9.17-aarch64-apple-darwin.tar.gz"
      sha256 "3c2b969dae734770279231fde7c26be7bca0285ea6661a83b04d65373e41b644"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.17/yomi-0.9.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d68bbff95bddd3136dd392fd0f1e05ba7863e6c0d6493a4911cc12f06ed0fd69"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
