class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.38/yomi-0.7.38-aarch64-apple-darwin.tar.gz"
      sha256 "7294ce7107aa0b70df12f9fba12a3a0ac351c05fdca1dc32bd1f55d12106c05a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.38/yomi-0.7.38-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5619307b3df33a8d77d9372a37043d12d43bfe8a746cb96bae3f94e47348ae69"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
