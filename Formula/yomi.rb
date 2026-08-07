class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.60/yomi-0.7.60-aarch64-apple-darwin.tar.gz"
      sha256 "dc20db666885b4c444b438a2097948edc26559d912d10fee520ec0f721b87a5d"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.60/yomi-0.7.60-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0e6e994434b582e82535068912fb2d70fff7d4f2cd84ea3e9eaeead6a491298c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
