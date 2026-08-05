class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.52/yomi-0.7.52-aarch64-apple-darwin.tar.gz"
      sha256 "e8a03ef2b7bdde16cc05cd391cea8d742270ddf4e3d51cc4da57f84ec8792da6"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.52/yomi-0.7.52-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "34d47c04bb5053c5a853610e5680dffd3ab0ff242b9932501917a6e6f719b120"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
