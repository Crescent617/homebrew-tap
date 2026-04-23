class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.13"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.13.tar.gz"
  sha256 "37d831ea65689c7e458933d366ec34b66b0d208eae607b1956e6378acddb6bb6"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.13"
    sha256 arm64_sequoia: "571d06518c3fab69c6d6d9aa7986dfc38102e90f170dfa9d44f1c07ec3ccdbbe"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
