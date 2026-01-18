class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.3.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "dc74a8d894258ad2eac86fa8dcb7d20e2d678910ee5802d92ebbd1f336227169"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.3.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "c1d5337a7f0ec0e0c75808f1a25d1b015fb0d091c84702c4ae7698b00af3521f"
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
