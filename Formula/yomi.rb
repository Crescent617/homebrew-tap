class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.7"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "4238857dabc5bfd3ffb88656c2e5a38b6f699acc47149c52cfd14090329ff26c"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.7"
    sha256 arm64_sequoia: "662d5bb376e89ed562c8479d2423f8db874b5c6fefff823eae2d7de34664157d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
