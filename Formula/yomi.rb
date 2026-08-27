class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.22/yomi-0.9.22-aarch64-apple-darwin.tar.gz"
      sha256 "43b0d92fb3a3a9388f858414d0b81987b5d88caf724ca9f0220bbc4597aaece2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.22/yomi-0.9.22-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "22bbc89994715fcb59c72e0b3c2328a12a242ceb7a07e75d32d9aa625b9e015d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
