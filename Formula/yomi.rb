class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.19/yomi-0.5.19-aarch64-apple-darwin.tar.gz"
      sha256 "903295d689579065a7745bb94cbc68d8d6086b8901556e9dfc495083002f5631"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.19/yomi-0.5.19-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4d15bcdf8736e8b76179c56ebfe0364d2df0d23b11704d38583c050a791d89a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
