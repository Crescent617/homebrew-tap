class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.3/yomi-0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "63796f45b0671765316703086b5c05c37a761e148910b8fc474ec58522c0d5ef"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.3/yomi-0.6.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "51bc138cd085cf95d00c53af6582a4b0ef4bfc727af9b3d51f1e5a4e2ac16fee"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
