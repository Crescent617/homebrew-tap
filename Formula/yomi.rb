class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.8.1/yomi-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "6aff3204fa291afd4e72fb046c0f5fcde6a06dc305b711f01661d4e1f57d86ee"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.8.1/yomi-0.8.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4b03d632bf56245f709164476657e0376be4e6c35465028d9d3c34f2cd1858a2"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
