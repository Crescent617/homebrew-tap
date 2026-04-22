class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.9"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "86643435f1587021bc4f6c59ae9cd0096123186847bc7449c637b68d7f9a49b4"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.9"
    sha256 arm64_sequoia: "21e1c83189a09d2ad0a565c36277a99f6774908a8154fbecc393f2083009a6d1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
