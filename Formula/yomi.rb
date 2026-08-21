class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.9.4/yomi-0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "00a394df68a12d9492ab7aeddb5b0c64b0664dff0f2a55c4823ff44d6b4c18ee"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.9.4/yomi-0.9.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f0302609b2eae60f3dac9c9d1d23b024ceeba01df4186dce7ea33a55b1c120b"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
