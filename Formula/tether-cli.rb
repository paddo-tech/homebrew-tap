class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.7/tether-x86_64-apple-darwin.tar.gz"
      sha256 "696cbde01a3c9644c6e8f60c0ac987ccc513b7a7a51343080c2d49980e63f545"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.7/tether-aarch64-apple-darwin.tar.gz"
      sha256 "24c43b5703eecf2421fb0b1ad0c65eb2b847ebb7d133f260ffb8069087771818"
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
