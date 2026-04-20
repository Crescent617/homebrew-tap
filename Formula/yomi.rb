class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.4"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "8b58afab237a8b96aa59decb8fa55aec362bdec7279fc0963d82b1571cd4ff5a"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.4"
    sha256 arm64_sequoia: "5e3e1ece491c857577d17b83f29e686bf743ed7352a48075d95cdda5ac762887"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
