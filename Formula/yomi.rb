class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.18/yomi-0.6.18-aarch64-apple-darwin.tar.gz"
      sha256 "c95f20743211ec43c578ed9da84e4521533a6507a4e45fdcd8d53a5ea183692d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.18/yomi-0.6.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8f2bea3219ebfd5aafb3c4b712609d50c114827ce7a2ad8cd82190fc75a7c499"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
