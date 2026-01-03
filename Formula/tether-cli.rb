class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.4/tether-x86_64-apple-darwin.tar.gz"
      sha256 "679aaf20c90a4e748d19f9e137cf59e3789245f231799bf74ad04dc25ce2f114"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.4/tether-aarch64-apple-darwin.tar.gz"
      sha256 "cc484de92bff90a19eb65deceda39adcfefe209e392a99e69a5b8cdc3460e0da"
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
