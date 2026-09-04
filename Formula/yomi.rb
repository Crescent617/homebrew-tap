class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.17/yomi-0.10.17-aarch64-apple-darwin.tar.gz"
      sha256 "3cded65996db3ea1d6c400037a57ba5c37c8a342a3096c2893d3ca152c6749b7"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.17/yomi-0.10.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6883e998f13d03a4bcc9facbed44881bce1a2f74eb0a883b9d8ea58e456797a4"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
