class Poker < Formula
  desc "Poker learning tool for the terminal"
  homepage "https://github.com/cpotdevin/poker-cli"
  url "https://github.com/cpotdevin/poker-cli/releases/download/v0.0.1/poker-cli-0.0.1.tar.gz"
  sha256 "cc34756a1fc65c2d7386a629f50f6f659240f903a49bb7d65415bfff28188190"
  license "MIT"

  depends_on "node@22"

  def install
    libexec.install "dist/cli.mjs"
    libexec.install "package.json"
    (bin/"poker").write <<~SH
      #!/bin/bash
      exec "$(brew --prefix node@22)/bin/node" "#{libexec}/dist/cli.mjs" "$@"
    SH
  end
end
