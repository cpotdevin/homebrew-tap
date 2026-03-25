class Poker < Formula
  desc "Poker learning tool for the terminal"
  homepage "https://github.com/cpotdevin/poker-cli"
  url "https://github.com/cpotdevin/poker-cli/releases/download/v0.0.2/poker-cli-0.0.2.tar.gz"
  sha256 "ca6045b69fb66f807ec56f3c25b4c35cd18fcb4f6b8acee4432af9e11cdccc70"
  license "MIT"

  depends_on "node@22"

  def install
    libexec.install Dir["*"]
    (bin/"poker").write <<~SH
      #!/bin/bash
      exec "$(brew --prefix node@22)/bin/node" "#{libexec}/dist/cli.mjs" "$@"
    SH
  end
end
