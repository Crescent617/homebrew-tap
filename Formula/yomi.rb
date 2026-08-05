class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.51/yomi-0.7.51-aarch64-apple-darwin.tar.gz"
      sha256 "4dd513a5ebaa0438267b7b42e047f4d814d89dde4f73655a851339661fd81b00"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.51/yomi-0.7.51-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e5b5c93fe0b6ec3efb853f67e98019554bc1f7fff6789c0433f6214ffd16a292"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
