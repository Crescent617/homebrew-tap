class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.47/yomi-0.1.47-aarch64-apple-darwin.tar.gz"
      sha256 "7731d3feb338cf4e2cec85d6f4c80f46c6d9275029978d82090191e04d9eb1f3"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.47/yomi-0.1.47-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6e259d283814868132b5a53b51cf09c0ef6359fb21ee72e337b652d7a2a8356f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
