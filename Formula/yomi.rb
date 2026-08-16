class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.85"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.85/yomi-0.7.85-aarch64-apple-darwin.tar.gz"
      sha256 "1019e1af4d0dd0dfea0d2ed8912d22b24da3ab4b94cad14d1d013c9b109a50c1"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.85/yomi-0.7.85-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fbd1f19a3a9f0c26e7584dad626dc39816019e8f046de4fe2f9a9ae93bd59076"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
