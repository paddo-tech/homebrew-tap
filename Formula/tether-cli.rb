class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.12.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.4/tether-x86_64-apple-darwin.tar.gz"
      sha256 "b6d529ca20aa57c9f6b52c8232f40186e9df23d75a91ffe9f955217962bb899e"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.4/tether-aarch64-apple-darwin.tar.gz"
      sha256 "4e1e9d2a4157210b53dca5758fec236d6735c4c8b01be174178ee6f40f62452d"
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
