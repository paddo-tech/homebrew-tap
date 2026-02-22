class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.4/tether-x86_64-apple-darwin.tar.gz"
      sha256 "962e84d9ec993f9ac714b76350077db7dffa5cebfad1aac9f5240f61e3020d0d"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.4/tether-aarch64-apple-darwin.tar.gz"
      sha256 "8d1e415f00bf8e2ab3f5653c5b8dec51984050fe436f73fe2d1e3b8a2a309873"
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
