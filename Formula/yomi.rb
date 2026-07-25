class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.2/yomi-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "10d7d4bdd749bec013b4be6ca879bd41f296c6ea5040eb0fff83d4387c82d464"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.2/yomi-0.7.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ea8db87efdcbf02f789e830278ce6ba5bb0f67788278da995acb537412c59c43"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
