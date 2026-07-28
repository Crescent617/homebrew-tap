class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.19/yomi-0.7.19-aarch64-apple-darwin.tar.gz"
      sha256 "03c1d711f1921e221ac113b1c02c22a5bb2baa7d7b931a045056e716fc2597b3"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.19/yomi-0.7.19-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dc92b3d4d05567db065e3704e005a4374d7c362b49ab8af6afcaa658b7e7a1c3"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
