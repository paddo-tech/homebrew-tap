class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "3617bf7ec04f2644e97d650735b576ac7b8638e9759f8caf584388f05c15dd2c"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "6b7c027c31a05a32284a59f32b82a4543c215f4fe84436a46f0d84fc4582c199"
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
