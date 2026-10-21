class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.17/yomi-0.11.17-aarch64-apple-darwin.tar.gz"
      sha256 "07b960291aaf85661b6db082a58536921a82e97f9edd5ad37652bd42a2631dfc"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
