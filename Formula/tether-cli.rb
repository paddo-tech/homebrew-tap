class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.3/tether-x86_64-apple-darwin.tar.gz"
      sha256 "fec777f69b2d12121c417411571737af882c749b87962fb5df3d8004625dbec8"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.3/tether-aarch64-apple-darwin.tar.gz"
      sha256 "cf7f653febbedd2733ecbad9e71292e0cf2f1834009574936462f7dbcaf12715"
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
