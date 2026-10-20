class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.16/yomi-0.11.16-aarch64-apple-darwin.tar.gz"
      sha256 "cf6bd70e713bdd8728a599ca01f19244c28ff06f665b4d45b34720e90014d698"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
