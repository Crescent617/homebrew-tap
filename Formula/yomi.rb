class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.2"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "2c0fba121534c736a4b66f4ce6c4447370e903b164787772a26e3302bfa6fa99"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.2"
    sha256 arm64_sequoia: "1fde8109fa00d92e6b4ce7c06f9b362680cc89012fdecd46375d7620c023ab80"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
