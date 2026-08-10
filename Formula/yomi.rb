class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.68"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.68/yomi-0.7.68-aarch64-apple-darwin.tar.gz"
      sha256 "7a09773872661f7a9ad4765c50d2cda13b13abe42ba2c35592031ad700b0292e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.68/yomi-0.7.68-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "edadf0cc36a6ef009270b41e0d84fa4625e40c9b642788ed65a4312118e5b926"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
