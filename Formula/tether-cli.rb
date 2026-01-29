class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.6.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "cc8d4ee98e84570ed88e55c545ae2cc92d84ac05fbf38b31827458d86d85b61b"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.6.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "38fa2bce9669835db25e3e39c2ed8706ce897a6e1d712fe200bb823f48c8cf4b"
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
