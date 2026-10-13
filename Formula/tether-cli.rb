class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "3dd10cce1703fc75cb1caf469a7f47177fbe68ba7129a962aed7033750a6cdd8"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "bae32b286714bd2f7858ec1c7e16815a505f53717044471a8f0e51a5958d471a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.1/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b8d6995a9dd9cf8dcfb9362f6da01a21df000820cd442ca0db1deb432075489"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.1/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "552562a4c585ecd7c44871bb2fdbec964940e3bf4118aee9427d5578bd8483bd"
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
