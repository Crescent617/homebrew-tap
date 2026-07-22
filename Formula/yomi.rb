class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.11/yomi-0.6.11-aarch64-apple-darwin.tar.gz"
      sha256 "07358bb7264ba9e46a9443f85f6c4217b7daf05074d773c1d123fb748e156e79"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.11/yomi-0.6.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "00a9689063a610160314db29c085bf8f5abe3fb02beaf238a55ff762bb1a192f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
