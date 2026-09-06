class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.25/yomi-0.10.25-aarch64-apple-darwin.tar.gz"
      sha256 "fcc9c314b806a69eb740172e0845ed4ddd43fa36922641d50b6a8ce53cd7034c"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.25/yomi-0.10.25-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a5132197a37d4c8e5429ac554863283b7764b37a34467ef9051416193e31215a"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
