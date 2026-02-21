class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.10.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "db69a7a1cc4866f585925a0b0891f81838117c8a44a8f6fbad7a075a12ada548"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.10.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "cffd876db155e5899b183ca958233d7acc0e5d8659fbeaad51e3fd499681a353"
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
