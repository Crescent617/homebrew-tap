class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.1"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "8706847ee3a7792f394b1f7bbfb5705acc1774893deee009ac80d098b402d1bf"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.1"
    sha256 arm64_sequoia: "696f6aff8dc914c9f6d95b240c71f33b41ecffdaaaa5ecfd8d29266437c73cd5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
