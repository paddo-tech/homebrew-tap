class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "5d361e83cd169d0301f9a3df9598ecb6f90765a7fbb9f5e2e3cf288d8bd86fd0"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "0507cf45a8d169a42f6eb8282a26e1771bda71b6bb2648cd3b4e0c30776f003a"
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
