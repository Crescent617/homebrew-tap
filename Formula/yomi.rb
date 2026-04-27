class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.1.25/yomi-0.1.25-aarch64-apple-darwin.tar.gz"
      sha256 "524f62e507aac9ce00f538a8f7818636c7a68fa833852c0bfc9f173534a5f0c8"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.1.25/yomi-0.1.25-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "977cdb29751459f8a002b8cc9a5e0b5ec6f6188a7a3d150babcbeaa27ffe56e8"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
