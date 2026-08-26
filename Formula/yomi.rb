class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.19/yomi-0.9.19-aarch64-apple-darwin.tar.gz"
      sha256 "6dc4289aace9c97659ff5bb5bd34138dd743fab97b88609deca6c27e9391d4f2"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.19/yomi-0.9.19-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bb0e303a0c2cc0b68b11737a087dd707a4cf17db844f36c337f0e343e3feed30"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
