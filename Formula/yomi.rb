class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.10"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "a2275f85e7fda40710814913bbe29729271dcd36bab68508c8acc6bcd5a30984"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.10"
    sha256 arm64_sequoia: "37d98f93f39816e29a9f3c8f02eab8b6e66fb95d48c7e7fda071414195ef3524"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
