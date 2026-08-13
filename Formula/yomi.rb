class Yomi < Formula
  desc "AI coding assistant CLI featuring async agent loop and TUI interface"
  homepage "https://github.com/Crescent617/yomi"
  version "0.7.76"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Crescent617/yomi/releases/download/v0.7.76/yomi-0.7.76-aarch64-apple-darwin.tar.gz"
      sha256 "7b1c902ee51d800127fb6b61aa2915b4dba12550c3cb3850710997e76c23d94a"
    end
  end

  on_linux do
    url "https://github.com/Crescent617/yomi/releases/download/v0.7.76/yomi-0.7.76-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "87e836940d650c155e8016b7db2d50ed72980c777e4203f8ab0657a252c9643f"
  end

  def install
    bin.install "yomi"
  end

  test do
    system "#{bin}/yomi", "--version"
  end
end
