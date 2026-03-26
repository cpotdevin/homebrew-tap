class Poker < Formula
  desc "Poker learning tool for the terminal"
  homepage "https://github.com/cpotdevin/poker-cli"
  url "https://github.com/cpotdevin/poker-cli/releases/download/v0.0.3/poker-cli-0.0.3.tar.gz"
  sha256 "d3a8b215d6b66f633c790ee14467fe8be601bfbb52723f34263714d5371a8c02"
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
