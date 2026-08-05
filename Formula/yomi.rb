class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.49/yomi-0.7.49-aarch64-apple-darwin.tar.gz"
      sha256 "123d3286081bc669f20e3fcf53183660d9d38850a5382d6f9e0e9d881c9c0983"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.49/yomi-0.7.49-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d4e7c911be8c9aacda505b1dacb42abf40ae4016f6ef5aea893fe386120d7331"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
