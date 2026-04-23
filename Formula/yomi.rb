class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.14"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "aade4c99b48e8a1feedc63b52cfd59a5378f60adf39db15d38e8f44f62c13014"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.14"
    sha256 arm64_sequoia: "9956cdf8a58876abd9b85708a653a07e2384e8936174518616afd07b4b788fe8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
