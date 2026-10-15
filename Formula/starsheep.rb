# This formula installs starsheep from source
# For local testing: brew install --build-from-source --formula Formula/starsheep.rb
# For debugging: brew install --verbose --debug Formula/starsheep.rb

class Starsheep < Formula
  desc "Customizable shell prompt generator written in Zig"
  homepage "https://github.com/Crescent617/starsheep"
  # TODO(merge 后): zig-0.17 分支合并并打 v0.1.6 tag，然后：
  #   1. url 改为 https://github.com/Crescent617/starsheep/archive/refs/tags/v0.1.6.tar.gz
  #   2. sha256 改为 curl -sL <上面的 url> | shasum -a 256 的结果
  url "https://github.com/Crescent617/starsheep/archive/bc23dc38df7405d234f271c41527dedcd8124021.tar.gz"
  version "0.1.6"
  sha256 "14fddab72fe098b8c2352fa0999cf70931f52bac518892118bb8f43a36950c59"
  license "MIT"

  head "https://github.com/Crescent617/starsheep.git", branch: "main"

  depends_on "zig" => :build # homebrew-core 的 zig 已是 0.17
  depends_on "libgit2"

  # build.zig.zon 中的 zig 包依赖（zig 0.17 在构建期拉包）。
  # 预先落盘到 --pkg-dir 目录，构建全程离线、可复现，
  # 也规避了 zig 0.17 自带 HTTP/git 客户端在代理环境下拉包失败的问题。
  # 升级依赖时同步更新 resource 与 ZIG_PKG_DIRS（目录名 = build.zig.zon 里的包 hash）。
  resource "chameleon" do
    url "https://github.com/Crescent617/chameleon/archive/8c48d2c58f6796a0c11a3c227e0476b83a3fa3f2.tar.gz"
    sha256 "44a620da54c7875534fc7e140c1ccfb81edff4ea04d93e82bab2a514d4d9274b"
  end

  resource "zig-toml" do
    url "https://github.com/sam701/zig-toml/archive/c661327bd9f02f774426c4fe78f60621411b7173.tar.gz"
    sha256 "de58c75e32e19e74571b7d80f1a270ebac106ad0d84683925cd10e01df5eabc9"
  end

  resource "yazap" do
    url "https://github.com/prajwalch/yazap/archive/82edda4aa180cc3aebf00b2c39a37975969eba0a.tar.gz"
    sha256 "ebc23fd7b7fd113c801ee1670a36ca4c755a02c284486849edc5ec56de237a5c"
  end

  resource "translate-c" do
    url "https://codeberg.org/ziglang/translate-c/archive/2.0.1.tar.gz"
    sha256 "c92ce4debc370cdfdb9d72534df67c01310a3ec6f1447eef2b8cf1ef1a5d26a7"
  end

  # translate-c 的嵌套依赖（不在 build.zig.zon 里，同样要落盘）
  resource "aro" do
    url "https://codeberg.org/ziglang/arocc.git", revision: "ffddc972f7a208bd6e254c27465407270fd8b60c"
  end

  ZIG_PKG_DIRS = {
    "chameleon"   => "chameleon-2.0.1-ZOxajXd7AAB1ITCufcm2t6ZCkWwnwnKyW7jv-XY7IoIV",
    "zig-toml"    => "toml-0.3.0-bV14BRmkAQDSILPPyXc31aAXPtJa1Uh8Frug3i6InAUc",
    "yazap"       => "yazap-0.7.0-Z1t-EiT6AQDpbgaDQ1i_oBfnvmeH4AUM3WmiuTuXuQMN",
    "translate-c" => "translate_c-2.0.1-Q_BUWmpOBwCIhy--up1q6cl3OlIQE86iJU8R-bZ01aPj",
    "aro"         => "aro-0.0.0-JSD1QqKGNwALqBes402gHE7CP3Ga6xHS1J4mjThB3ro4",
  }.freeze

  def install
    # zig 0.17 构建系统的 HTTP/git 客户端经代理拉包会失败；
    # 依赖已全部离线落盘，构建不需要代理
    ENV.delete "http_proxy"
    ENV.delete "https_proxy"
    ENV.delete "HTTP_PROXY"
    ENV.delete "HTTPS_PROXY"
    ENV.delete "all_proxy"
    ENV.delete "ALL_PROXY"

    pkg_path = buildpath/"zig-deps"
    ZIG_PKG_DIRS.each do |res_name, dir_name|
      resource(res_name).stage(pkg_path/dir_name)
      rm_r pkg_path/dir_name/".git" # git 资源会带出 .git，影响 zig 包 hash 校验
    end

    # --search-prefix: 让 zig 找到 libgit2 的 lib 与头文件（translate-c 需要）
    system "zig", "build",
           "--release=safe",
           "--pkg-dir", pkg_path,
           "--search-prefix", formula_opt_prefix("libgit2")

    bin.install "zig-out/bin/starsheep"

    pkgshare.install Dir["src/shell/*"] if File.directory?("src/shell")
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

    # Shell integration scripts are installed
    assert_path_exists pkgshare/"init-zsh.sh"

    # Test prompt generation (may fail in certain environments, so we use || true)
    system bin/"starsheep", "prompt"
  end
end
