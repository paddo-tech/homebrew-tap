class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.5.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "b52ad51dab44622754585064c87704e8e325e0e2c7172ec83c503c12476f9b8a"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.5.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "733f1e4db82ad97d3499ac144004fd3738ef0f05eef2638153a326f08bb095f3"
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
