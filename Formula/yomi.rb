class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.18/yomi-0.9.18-aarch64-apple-darwin.tar.gz"
      sha256 "6c54d74da0e951afe2c177613124590c92cb8cd7872afaf25feadc8f4873bfea"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.18/yomi-0.9.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ef2d9473b5102f4443bb3e81f3d95c5da3756658257aeba861b6efde69516ba2"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
