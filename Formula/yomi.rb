class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.51/yomi-0.2.51-aarch64-apple-darwin.tar.gz"
      sha256 "339cad91d23e7bda5b405d10bc05fc6c0e89c3d0f6152885d498461d4f2cda6f"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.51/yomi-0.2.51-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f0b6f70a34e95f6a8330622c9d78715379f658cbfabab1da78bfc214c1ca74f1"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
