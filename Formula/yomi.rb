class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.4/yomi-0.10.4-aarch64-apple-darwin.tar.gz"
      sha256 "e1fec9301a53a9c9c2e27af2a59fd7782b1e6bc5fe811c4b00c6c240f6bd70ce"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.4/yomi-0.10.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d5edb73115aba8fd29f9143614995cd847e8d6e4557060094c8cfcbfd70d9e18"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
