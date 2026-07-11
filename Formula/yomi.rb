class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.4.8/yomi-0.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "029b2a419ee2bfa8e3699db64281c3761e2834b643d163214e9c49d3e6f58596"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.4.8/yomi-0.4.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "84cd4f5f913023da14b208a8ed50e91858f33f6ee05f91673c450b43ac892bc5"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
