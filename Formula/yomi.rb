class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.25/yomi-0.7.25-aarch64-apple-darwin.tar.gz"
      sha256 "10895e711670b395bc5821f0f021a6a0dd656331363d4b895aa59b69a5eb7c36"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.25/yomi-0.7.25-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "332540969b825ea98305155b5f1364da01c76330dccb4712858a965d8cbd4083"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
