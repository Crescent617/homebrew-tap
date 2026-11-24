class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.11.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.11.31/yomi-0.11.31-aarch64-apple-darwin.tar.gz"
      sha256 "08d3ce8dae846b82ef5f34891cef9cf0ba921d0510d3da767949337fcba062e5"
    end
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
