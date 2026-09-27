class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.10.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.10.49/yomi-0.10.49-aarch64-apple-darwin.tar.gz"
      sha256 "acc3b7878c3773dae154b03535f32ebd470d6775da5c10a85474dcb3e4c860c6"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.10.49/yomi-0.10.49-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "22a5d747a907e1027fd5bec18b6ac7b2b8d8c70c2ed04084e87b511e2f151781"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
