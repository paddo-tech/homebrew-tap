class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.13.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.13.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "73392acefa3901adeb3985547a3be74cb1f7f963762c776d8d69f7400af50b01"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.13.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "669c964ae678f70e27224a6c85984dff01e2086a178f4e77f63aab85f2bb513c"
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
