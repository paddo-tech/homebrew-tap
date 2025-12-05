class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.0.4/tether-x86_64-apple-darwin.tar.gz"
      sha256 "070b42f9483157432109927e890bedea328d607cc26f36d311297ca2fc3b98f0"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.0.4/tether-aarch64-apple-darwin.tar.gz"
      sha256 "c22cc8264f702e57eefd2845163f521396dd9bcd49e9ef8e0a45e1e909697727"
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
