class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.31/yomi-0.10.31-aarch64-apple-darwin.tar.gz"
      sha256 "e38712dc534afb67ba39c50cb74b6e0558043f47cd20f03f45ea87e7e26e36c1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.31/yomi-0.10.31-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f50397a40a2f7d9dc369f9c519e533a646b1d6224bf9df05a5092e8af608ca4d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
