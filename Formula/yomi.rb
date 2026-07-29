class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.20/yomi-0.7.20-aarch64-apple-darwin.tar.gz"
      sha256 "9768051d25c88dc204858510ec367e089dcf9b114a8dbc1b238b2ffc495f0c25"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.20/yomi-0.7.20-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d0e3ffb5d1c9358f49583227998bc4977ca92af34ead70d91d951394e3e44e4c"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
