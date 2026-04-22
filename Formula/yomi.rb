class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.8"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "01c64a1aee4f7d28fd79101400c4127c4a3c60f9ddad1326042b5ac5720b96e5"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.8"
    sha256 arm64_sequoia: "1e7c8e0e77453877fa81df42f86342cb3b37cee7c4ec2d6575f4e9616d55fcdb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
