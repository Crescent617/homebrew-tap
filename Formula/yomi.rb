class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.39/yomi-0.7.39-aarch64-apple-darwin.tar.gz"
      sha256 "52179777217b3bd43048dee4e2935015c5679d5e56e78c6dd762eb932c263c4a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.39/yomi-0.7.39-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2bdf29af57aea94e44ec5eb31b354df8faa03987e59e96294eb42bca74309617"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
