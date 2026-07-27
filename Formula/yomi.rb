class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.8/yomi-0.7.8-aarch64-apple-darwin.tar.gz"
      sha256 "8cd90a67990babda9313c931b1a62cec359bee3946bc3e527bca68d626d4090b"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.8/yomi-0.7.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5cb71438d1c7cfbb5b1606fe426c54ceee4f2df3aaa901de2322a1d67ade5f65"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
