class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.5/tether-x86_64-apple-darwin.tar.gz"
      sha256 "38d0801e420f00c2b1765e635bf9086e5129ff74f9a757042b2bc22bc38570db"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.5/tether-aarch64-apple-darwin.tar.gz"
      sha256 "0059956505325a5cc6e86adc3d6e95a104ad283c96e2157fad6dc1f0f303325d"
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
