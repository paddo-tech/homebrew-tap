class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "99662da51c71ee3f385990615e3edac415bac80baf7c728fb3b57093eb606c49"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "b26ae8851ab3f05307e4d3b452a3cd411866ae3a06bebcd39254cf4b6d08efa7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.2/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e4a749600dd55299bcfd97ae869c20826f5af0a14c4c102c03819d92a2dfd7a"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.2/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c67b51b17f16b48403fbfe8c4825be9039226958d700c02b29e0c8d07f354f50"
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
