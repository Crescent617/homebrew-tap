class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.62/yomi-0.7.62-aarch64-apple-darwin.tar.gz"
      sha256 "511dcffee62708dcf148221e58e32031ba5270da1df2c64bd63b7cfff78ca4e3"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.62/yomi-0.7.62-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "19be73f1fbe1fd91edad7133b49720631ce470d6db848cfc920862d63389d496"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
