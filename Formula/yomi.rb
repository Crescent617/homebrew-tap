class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.9/yomi-0.9.9-aarch64-apple-darwin.tar.gz"
      sha256 "546c65b4ca10f0162af2590249ec10cce40bdab69d43ec6697e6c1bf842fba1f"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.9/yomi-0.9.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "87d39d714c56f3ae3df149b4e92e3d93d8e1124144b0fb00a240dc368f50b562"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
