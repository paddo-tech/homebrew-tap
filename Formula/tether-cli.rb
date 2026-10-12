class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "676278e690947afb8d66f43330b915a0cd095835bd17811533308c470fec1bcb"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "4715a2a981aa38aa2bc84ae99dc1a25783894a38a4164d86f80cbebfd0834a71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1af134ec934212fb2141e446fea3a84f4e0a025e9f19e23819e022b2e37ed86e"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "212e71c0c5caff74d37f5febc89f58f65563f63c21bbf58a5b156b12a15dede9"
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
