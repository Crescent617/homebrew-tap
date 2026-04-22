class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.9"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "49686f194f974f034a60d5b0f6544c37729b8771fa7b0b1b2af4b32198e52f3f"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.9"
    sha256 arm64_sequoia: "d78750e40c2350a2e1e5c3eff6c67ce3d6d0bca7a5e37a8221f61520ce371f1d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
