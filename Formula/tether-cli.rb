class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "708b3d76b9243ad42f3d2d4c661c555591f1e9930fad40a817940c1ae6812927"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "d7aa5a27af48b5a3e33fee5adf77848245fb99daba92bd279b0ddf0ef579a008"
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
