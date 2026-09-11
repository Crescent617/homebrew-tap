class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.30/yomi-0.10.30-aarch64-apple-darwin.tar.gz"
      sha256 "a27bab1db6f3eb5043a045869c6157f8547b98e31feba5fc7bce52e0c70c27d9"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.30/yomi-0.10.30-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4841ac50c32be6ebb0e9cd33e041b3a2cc7ae86eaea757ef139d135b89a9cc8"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
