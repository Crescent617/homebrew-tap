class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.2.12/yomi-0.2.12-aarch64-apple-darwin.tar.gz"
      sha256 "ddca22e4b9c2b7600f478e2f646538ff0cbf69ff86db6f494b14005c0543407a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.2.12/yomi-0.2.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "89dac8df7443f912e749d192bb6c49a014b4248741837e3584bdeafd2c723371"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
