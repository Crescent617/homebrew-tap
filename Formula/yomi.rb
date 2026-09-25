class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.45/yomi-0.10.45-aarch64-apple-darwin.tar.gz"
      sha256 "b07760de516262e1c91a7c41710d2839fc1d6b9a8cd7e6a57d421a5b1fce963d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.45/yomi-0.10.45-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7cea70c895617393341478c2ed26c10242f536b1dc60598d9aacf7d34c21cdb7"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
