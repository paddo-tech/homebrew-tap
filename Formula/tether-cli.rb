class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "ebe275acce7a598f3e34e140ebf3d81b8e848583558a49013d72541346d77acc"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "1d76ee291e8daa4bfa168f6a2087ff33a60a2818108df3e214360adc76aa2844"
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
