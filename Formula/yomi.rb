class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.12"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "ea4080d927898199753bb1ccc049761790882b95c51e4ac1c3f16f06809064fe"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.12"
    sha256 arm64_sequoia: "2fdf93170d572510bf2a34335d96d1411b29df7c480df19a17468fbd757c88a8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
