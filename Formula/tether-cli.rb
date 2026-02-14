class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.3/tether-x86_64-apple-darwin.tar.gz"
      sha256 "078fb561534b96f0e220dae65b5a924f004b6f45236b92ed3ac09f7fbff9e949"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.3/tether-aarch64-apple-darwin.tar.gz"
      sha256 "e35eacfcce64100a1ee10261e609e361a11e6d80e864f33f4d2a013ab743f084"
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
