class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.8/tether-x86_64-apple-darwin.tar.gz"
      sha256 "1c11ab50d134782bc3bb8e2f1ebf8e1b9e878f5ff4916826bd404a4cefb13476"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.8/tether-aarch64-apple-darwin.tar.gz"
      sha256 "4afe3eb1ece28018d06bfbeee7e7e28f831c061156456872efb4be32eb915360"
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
