class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.22/yomi-0.6.22-aarch64-apple-darwin.tar.gz"
      sha256 "127d0028b0a2572b3d710d5b26d5349f20f8d1cdeb2535ba833c667cae73a0c1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.22/yomi-0.6.22-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c401789609e0c94a44d372c2d8e9d4a327b778672b2e62295710a46701c1faf6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
