class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.5.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.5.23/yomi-0.5.23-aarch64-apple-darwin.tar.gz"
      sha256 "1834acacee01de75575d9825cb0323e2579b9ea246e72c4a103ecaa071ec6c8e"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.5.23/yomi-0.5.23-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f44898bc74dabdd5fce04296174668ac80532df0168c999e13690412628b8269"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
