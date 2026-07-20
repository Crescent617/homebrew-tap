class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.6.6/yomi-0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "82d64b7dc638db09e5e250a3854056595a8881a922902253da8af19cfa9d1c02"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.6.6/yomi-0.6.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3576fc9d1456e11c0e8c2963d116dd3e5e7a66f93b26ca28b93ac16002a84a16"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
