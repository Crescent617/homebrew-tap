# This formula installs starsheep from prebuilt binaries
# For local testing: brew install --build-from-source --formula Formula/starsheep.rb
# For debugging: brew install --verbose --debug Formula/starsheep.rb

class Starsheep < Formula
  desc "Customizable shell prompt generator written in Zig"
  homepage "https://github.com/Crescent617/starsheep"
  license "MIT"

  # TODO(首个 tag 发布后): 填 CI 产物的真实 sha256，两个架构不同，
  # 需要把这个占位值删掉、改成各分支内各自的 sha256：
  #   gh release download v0.1.6 -p '*.tar.gz' -D /tmp/ss-dist
  #   shasum -a 256 /tmp/ss-dist/*.tar.gz
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  if Hardware::CPU.arm?
    url "https://github.com/Crescent617/starsheep/releases/download/v0.1.6/starsheep_0.1.6_aarch64-macos.tar.gz"
  else
    url "https://github.com/Crescent617/starsheep/releases/download/v0.1.6/starsheep_0.1.6_x86_64-macos.tar.gz"
  end

  # 运行期动态链接 libgit2（CI 产物同样基于 brew 的 libgit2 构建，keg 路径一致）
  depends_on "libgit2"

  def install
    bin.install "bin/starsheep"
    # init-zsh.sh 已内嵌进二进制（@embedFile），装一份到 pkgshare 仅作参考
    pkgshare.install Dir["share/starsheep/*"]
  end

  def caveats
    <<~EOS
      To activate starsheep, add the following to your ~/.zshrc:
        eval "$(starsheep init zsh)"

      Create configuration at ~/.config/starsheep.toml
    EOS
  end

  test do
    # Test version output
    assert_match version.to_s, shell_output("#{bin}/starsheep version")

    # Test basic functionality (yazap prints help to stderr, so merge streams)
    assert_match "starsheep", shell_output("#{bin}/starsheep --help 2>&1")

    # Test init command emits the zsh hooks
    init_output = shell_output("#{bin}/starsheep init zsh")
    assert_match "preexec", init_output

    # Shell integration script is installed for reference
    assert_path_exists pkgshare/"init-zsh.sh"

    # Test prompt generation (may fail in certain environments, so we use || true)
    system bin/"starsheep", "prompt"
  end
end
