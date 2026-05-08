class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.9/yomi-0.2.9-aarch64-apple-darwin.tar.gz"
      sha256 "e3875c592f107722c5e1f50df4e8a4e7bd4ccb450e7b8a75ee5feb80e3ae77bf"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.9/yomi-0.2.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e6476d273328acccf9b8d72e202eea575fd1b69527d32532d965f38a5799310d"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
