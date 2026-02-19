class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.8/tether-x86_64-apple-darwin.tar.gz"
      sha256 "4224a137b9ad4ae246759e501323caf6ca5925343e2d59ba0a49eb4755980ee4"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.8/tether-aarch64-apple-darwin.tar.gz"
      sha256 "a0346658a92e7dec123b90e66a07fa0c9ec214fc62f048c15016612283981e7f"
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
