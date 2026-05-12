class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.11/yomi-0.2.11-aarch64-apple-darwin.tar.gz"
      sha256 "de8b1022f5074fb4046c504a925c3d2e5e70dfeb423f0265fa86c34866abdf05"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.11/yomi-0.2.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8b98cb2b47f2e7fdff95cb9cdcd3637c83c57f33c0330c21ca3b3530b8ce0f94"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
