class TetherCliAT110Beta3 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.0-beta.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.0-beta.3/tether-x86_64-apple-darwin.tar.gz"
      sha256 "a3a03ab451855b6197db8031cee08dc3891137074776ef44d7ae2a0ffb4709f2"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.0-beta.3/tether-aarch64-apple-darwin.tar.gz"
      sha256 "184c1b1580758d3b6a623c4be503ce9122379c3359469e49232d18430d156fe9"
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
