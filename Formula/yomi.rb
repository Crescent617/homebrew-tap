class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.22/yomi-0.2.22-aarch64-apple-darwin.tar.gz"
      sha256 "01b559f10fbc5685bee51d5ed122aeb2bbf5a8cfd30e123e406ea9f7e1e3ae66"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.22/yomi-0.2.22-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f6375267a5fcdb0fbf11697c93e6d7c717cab0caa4baa136c8dd3c1aa58dcd5b"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
