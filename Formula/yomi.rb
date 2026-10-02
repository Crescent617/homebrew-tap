class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.57/yomi-0.10.57-aarch64-apple-darwin.tar.gz"
      sha256 "2d2326dcd4bbb1eecdf17bdd549875e5a7b3787a8569870428ea955d44df8d4a"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
