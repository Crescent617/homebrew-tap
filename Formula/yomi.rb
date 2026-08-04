class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.46/yomi-0.7.46-aarch64-apple-darwin.tar.gz"
      sha256 "c478d2c321e111803ef326069e00412f82ef7dc3d4c31929337b2c7ae2af943f"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.46/yomi-0.7.46-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "861453cf682b2cd872adaaf80d88cd8c06e356f9d474f370a35e3be52d8d35a7"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
