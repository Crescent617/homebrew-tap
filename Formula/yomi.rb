class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.8"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "b24045c4bdef542b0cd1663e3bbecf326c9d12cb2de5d37bbe5607c37f1a411f"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.8"
    sha256 arm64_sequoia: "3a11779c5e0057b2c8ab54b899d73defa0e9ba2342433b9018f2bc3b93a8a1eb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
