class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "47b3cf64101c183ffa589ddca3d97efe9967d057cf20868bed13ae611c11b220"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "b848a43fa6918df6ffd9af2061b65af1c482bc1f8dff7a7aecdb859d65fce642"
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
