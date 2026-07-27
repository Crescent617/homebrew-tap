# This formula installs starsheep from source
# For local testing: brew install --build-from-source --formula Formula/starsheep.rb
# For debugging: brew install --verbose --debug Formula/starsheep.rb

class Starsheep < Formula
  desc "A blazingly fast, customizable shell prompt generator written in Zig"
  homepage "https://github.com/Crescent617/starsheep"
  license "MIT"
  url "https://github.com/Crescent617/starsheep/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "29bed4162ce1096881b687f780089b4ecf143fa3b923734dda1ade33d20ebf9d"

  head "https://github.com/Crescent617/starsheep.git", branch: "main"

  depends_on "zig@0.15" => :build
  depends_on "libgit2"

  def install
    # zig@0.15 is keg-only; put its bin on PATH for the build
    ENV.prepend_path "PATH", Formula["zig@0.15"].opt_bin

    # Build the project
    system "zig", "build", "--release=safe"

    # Install the binary
    bin.install "zig-out/bin/starsheep"

    # Install shell integration scripts (optional)
    if File.directory?("src/shell")
      (share/"starsheep").install Dir["src/shell/*"]
    end
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

    # Test init command
    init_output = shell_output("#{bin}/starsheep init zsh")
    assert_match "zsh", init_output

    # Test prompt generation (may fail in certain environments, so we use || true)
    system "#{bin}/starsheep", "prompt"
  end
end
