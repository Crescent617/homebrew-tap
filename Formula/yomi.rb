class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.6/yomi-0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "9134c2da7106e00e613f1b2f3375db4d726c000f8b65aeb82e086844514d223b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.6/yomi-0.4.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "967f51dc35c595d372a60d96e9ddabf94b8cffdd17cb50ec44b9bf55173dbd86"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
