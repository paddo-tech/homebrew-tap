class TetherCliAT200Beta3 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.3/tether-x86_64-apple-darwin.tar.gz"
      sha256 "204917bdf26ada1711a00ddd558a478376d2403b891e2cab892693fec434fd5f"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.3/tether-aarch64-apple-darwin.tar.gz"
      sha256 "2cd1be25f7ad437c2a86f4a68c21a89e5583d52f7f7e783f438b3ff16f1a6fbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.3/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5777ba6765a9bae4c318cf6b2bf46638c5389235d139228165ca1e1683edce47"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.3/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "faf19eec15ff5fadb2becfd091e9f302dd0b6e39d50721cef93c43ac06860acf"
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
