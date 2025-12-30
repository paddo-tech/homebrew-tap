class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.3/tether-x86_64-apple-darwin.tar.gz"
      sha256 "5876dcbd6c34f8b54355b362e07e8e24204309df613f54dbc6aceb9a9a3d790a"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.3/tether-aarch64-apple-darwin.tar.gz"
      sha256 "7ddbabd080152fcb25d1bb97b16a0f59f83cebbef20502282f27a40d78682ddc"
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
