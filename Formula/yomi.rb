class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.72/yomi-0.7.72-aarch64-apple-darwin.tar.gz"
      sha256 "0e8e6376e297bb0a06210dcc869018145206bb846fab3cdb69820af86f506df4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.72/yomi-0.7.72-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a1ac25f94e510327ba80b380ea38e71a90d95c97766b1dabc73e326ae503b180"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
