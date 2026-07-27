class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.9/yomi-0.7.9-aarch64-apple-darwin.tar.gz"
      sha256 "a4196be9a8a4839a32d7cb7b30bff32abe0b02af585f691643557312c5a535fc"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.9/yomi-0.7.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "81df004544dbce1f1061055e638b59518dbe027de3de280e16a0f9a1b44ef88c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
