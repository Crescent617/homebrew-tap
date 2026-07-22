class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.9/yomi-0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "2a8ae5bd9cfd1dcf3443c2dfa900594f8c3da70b1aa877a2981284f817c49981"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.9/yomi-0.6.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bc7732d981038217c9ae87827cd1a83b3cc44909fd2541d59d3d762afd846308"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
