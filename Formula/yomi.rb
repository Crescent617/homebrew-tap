class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.11/yomi-0.7.11-aarch64-apple-darwin.tar.gz"
      sha256 "33139614bd99b64d70dbefec815dbda1c1ae09ad3eeb1a459494e05638524266"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.11/yomi-0.7.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9d382c5c0e0dc7591bd9c8856daf07bd30ab56c0eb7a95acfbb8c0741ad8d1fe"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
