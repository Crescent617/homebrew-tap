class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.20/yomi-0.10.20-aarch64-apple-darwin.tar.gz"
      sha256 "921a2995eb5a71e16c18ba53f9ca37495f93a04123732ae40c841e7b9f858cd2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.20/yomi-0.10.20-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a70900264aa1c62c2d2182cdcf3602b2dde8a6f8312378dd88e8bec52d4c83ca"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
