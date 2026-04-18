class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.3"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "9279cf4361fd4240b61263080cf0d094b5c9d65926c72d353bc60275f46462ed"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.3"
    sha256 arm64_sequoia: "3ca1f15215c0488b3f4905a2c175f3c23a73e050381648d03c533a0a3c7bc7d7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
