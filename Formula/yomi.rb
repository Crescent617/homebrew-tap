class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.9/yomi-0.10.9-aarch64-apple-darwin.tar.gz"
      sha256 "05976b85fed2d2d8803bdb19d8f13c9e1ed5ed9e32ef657733b753877aaa6b3a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.9/yomi-0.10.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "627e61c7fb5ed2cc3f47a735753de8556ea981c1e438f069972bcbb98e4c79a6"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
