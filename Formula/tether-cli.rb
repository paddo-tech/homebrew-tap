class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.6/tether-x86_64-apple-darwin.tar.gz"
      sha256 "ca70a87864fdfdda0278b783dad3bdf7d73cd2e109ddc91241a7f820d1a16144"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.6/tether-aarch64-apple-darwin.tar.gz"
      sha256 "99179ad1f904d41399d90f449359b37b51fc7cab95d2c84b841c5800ddbc7ffd"
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
