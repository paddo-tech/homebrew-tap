class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.9/tether-x86_64-apple-darwin.tar.gz"
      sha256 "8ee84ce03c347fd6ef92c91f350a985ab874d6ca0ae374eb59f87beb015db2a9"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.9/tether-aarch64-apple-darwin.tar.gz"
      sha256 "176deee5b26ffb79335785487fccf12c8ceded7ef8cc0227c2beca86f949116a"
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
