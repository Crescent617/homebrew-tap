class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.77/yomi-0.7.77-aarch64-apple-darwin.tar.gz"
      sha256 "4876b61b4517da6107cd7f503b8792735a9e5e4199c75522f1f9254666dd050a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.77/yomi-0.7.77-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "01bfefa594bda8340d5519336fb7d834ee962051a5c791618da0cdae9af745e8"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
