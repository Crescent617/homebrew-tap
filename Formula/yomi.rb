class Yomi < Formula
  desc "AI coding assistant CLI built in Rust"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.5"
  license "MIT"

  url "https://github.com/Crescent617/yomi/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "dd2fe9728a0ab2f91cb0dc1c2977091c0409d591e8d632be22cba18b4061b472"

  bottle do
    root_url "https://github.com/Crescent617/yomi/releases/download/v0.1.5"
    sha256 arm64_sequoia: "f29aee3bc82a101b3c344cf9c94e7a9b9db58230271bc182e1295c5bf855b861"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "yomi", shell_output("#{bin}/yomi --help")
  end
end
