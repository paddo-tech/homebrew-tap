class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.7/tether-x86_64-apple-darwin.tar.gz"
      sha256 "9ccc245b3fa1bca64a9e5e2654cc636abcf42173482d7732af2874583781b626"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.7/tether-aarch64-apple-darwin.tar.gz"
      sha256 "eb5b4820f9ee9c5cbe034345248c672bc6413a6649d0a9c5070abf65729eb4c1"
    end
  end

  def install
    bin.install "tether"
  end

  def caveats
    <<~EOS
      To get started, run:
        tether init

      This will set up your sync repository and start the background daemon.
    EOS
  end

  test do
    assert_match "tether", shell_output("#{bin}/tether --help")
  end
end
