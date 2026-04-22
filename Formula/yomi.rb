class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.9"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "5d912b9301ef4e449a542529b7e7e8bb8d853f8f0219ffe59f2bde958aa3593b"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.9"
    sha256 arm64_sequoia: "8e92fcec090ad0e7cdd5b657437be1e88aea4701df89f2ed7ea1ac414ae329e1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
