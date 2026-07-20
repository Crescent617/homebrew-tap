class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.7/yomi-0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "36de43faef72548102381919805a41835ece3d3614ca93b2ade081ce284eac37"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.7/yomi-0.6.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "851d45e4a9184e534ee80d1e6ea2494aee13d2aca95f50b4487f67837352ac65"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
