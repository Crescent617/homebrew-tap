class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.10/yomi-0.10.10-aarch64-apple-darwin.tar.gz"
      sha256 "0dcb15d8f01cf705c706f9ff13bec03410fd49e8bc8778a3a707fd94a649f1ec"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.10/yomi-0.10.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8e14454cdb013cba3933b2b25a59d726dc82352711b12fb2439807dd06b7ba79"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
