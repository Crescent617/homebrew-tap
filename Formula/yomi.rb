class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.0"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5e91baa9ae0bbad908b17804faa3e2e68dbb69f96e51bf77cc248dc94345a5a8"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.0"
    sha256 arm64_sequoia: "d2638d669c14cf24e10d0282c1969a5a4e76f1289a8306e77262a688a78564d9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
