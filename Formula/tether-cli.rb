class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.4/tether-x86_64-apple-darwin.tar.gz"
      sha256 "eb3a18cef9d641cc3de348f4f4a47ded9b4c843e9bc0064c9dea64788dacd23f"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.4/tether-aarch64-apple-darwin.tar.gz"
      sha256 "e39aab5f33746d3128e1f024d11b301b1519ae3755ab2700234192e15e65f157"
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
