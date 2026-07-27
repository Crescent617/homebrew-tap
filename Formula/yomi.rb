class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.12/yomi-0.7.12-aarch64-apple-darwin.tar.gz"
      sha256 "ddb7f521ae1ee33ae8f1dfcc27044f67de57592017ba21ee885f942859b15f4e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.12/yomi-0.7.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "140b79b0d4cd71e4da5aa40aeb9fea6d20d00cad49f447b6b97c998f01fed2da"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
