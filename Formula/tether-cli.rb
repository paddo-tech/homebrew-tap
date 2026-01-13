class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.2.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "42b7fd0754ca9dcba8427314f6b3622b69badc7df0e32251e72ac72130449007"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.2.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "83a1bade739e8d2b232c83c5961f51178b27d066776c6517e305bfc45209ae11"
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
