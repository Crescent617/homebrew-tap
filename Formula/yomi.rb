class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.50/yomi-0.7.50-aarch64-apple-darwin.tar.gz"
      sha256 "ba2b6a479625df217994afb647356bc7892153f51890148cb685bc63f0a4f106"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.50/yomi-0.7.50-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "133ea8ab9db16b6b579de6fe199763355a71ef92fdc272b5666528004884fef7"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
