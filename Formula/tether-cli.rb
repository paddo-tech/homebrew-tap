class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.5/tether-x86_64-apple-darwin.tar.gz"
      sha256 "f9da91eaeed04c9ba8a7cc3ee710f62a89c253bbeac11c3a68d0d20bee3fb039"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.5/tether-aarch64-apple-darwin.tar.gz"
      sha256 "7729e203d038afff8779120c1e0f38d6907a2f102bc8dedf218ce9060ed1f20a"
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
