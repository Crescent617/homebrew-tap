class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.11"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.11.tar.gz"
  sha256 "4369b7974ed60741c9fe46feb7d030d008e525a252588767708f3b613ab02d93"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.11"
    sha256 arm64_sequoia: "84f268e5935fff9b685eec8e11a2877c37dc95184918d12d49cbc6826a167ff6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
