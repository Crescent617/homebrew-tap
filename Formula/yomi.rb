class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.13/yomi-0.11.13-aarch64-apple-darwin.tar.gz"
      sha256 "4cda81749e54d6225ca38ca740991f07cf1d377608b9b61b30673159c24b7ecc"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
