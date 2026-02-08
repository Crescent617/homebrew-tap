# This formula installs starsheep from source
# For local testing: brew install --build-from-source --formula Formula/starsheep.rb
# For debugging: brew install --verbose --debug Formula/starsheep.rb

class Starsheep < Formula
  desc "A blazingly fast, customizable shell prompt generator written in Zig"
  homepage "https://github.com/Crescent617/starsheep"
  license "MIT"
  url "https://github.com/Crescent617/starsheep/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "8107f102c4c355f6f936a3f92d4f2036abe36c84d07c85c6c126d354d83b6c03"

  head "https://github.com/Crescent617/starsheep.git", branch: "main"

  depends_on "zig" => :build
  depends_on "libgit2"

  def install
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
    # Test basic functionality
    assert_match "starsheep", shell_output("#{bin}/starsheep --help")

    # Test init command
    init_output = shell_output("#{bin}/starsheep init zsh")
    assert_match "zsh", init_output

    # Test prompt generation (may fail in certain environments, so we use || true)
    system "#{bin}/starsheep", "prompt"
  end
end
