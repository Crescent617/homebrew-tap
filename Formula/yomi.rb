class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.41/yomi-0.10.41-aarch64-apple-darwin.tar.gz"
      sha256 "63bb4830b230c213d8858875b9251e0443e3c17b8fae49fdb1b25777931e2690"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.41/yomi-0.10.41-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b98f6339458341646fc0dcce43974110c3c2bb9ad1f072fddb027327e3316fb6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
