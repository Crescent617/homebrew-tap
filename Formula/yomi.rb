class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.18/yomi-0.2.18-aarch64-apple-darwin.tar.gz"
      sha256 "aafe48ba19d6de955a9563ddf2133063d88cba21c920aa2446bb42ba3741eed4"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.18/yomi-0.2.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6c966d9b71e61facb19878738640c9dd49eb900b30a62b5bbf1187ca7f69018"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
