class TetherCliAT200Beta5 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.5/tether-x86_64-apple-darwin.tar.gz"
      sha256 "1d27af4e36db35276cfe0baddbd8ca9bb0c2f8d2af288e9dbc5b56b302dd7032"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.5/tether-aarch64-apple-darwin.tar.gz"
      sha256 "e85cdc600027e202a85c89902764c5a5c4768fdaaa2326f44c9af59f7e3e1766"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.5/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa92d9ddbb13a216a978175bc44f2eab2762b04a239425a65aaa1f0a4eba7d6c"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.5/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1cf12beb83374ca4011a1031a957582a7201ee28d866428a121db881deb8ada"
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
