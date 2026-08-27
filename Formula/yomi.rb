class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.21/yomi-0.9.21-aarch64-apple-darwin.tar.gz"
      sha256 "6f30613bfa9bed7acb06ced926326b2de04dd65dfa558b8c27586a7e84cde759"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.21/yomi-0.9.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "982f8f729b9fe4770bca436d9ee26fe5917908372e02e60a0068c83ad42b68c4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
