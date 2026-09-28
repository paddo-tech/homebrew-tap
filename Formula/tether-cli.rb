class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.12.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "df542905d5e68b7934e6caf9e17742ca407c86412a6fc112b79d3f1dc3a7208e"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "f3e0ca87101e3704cc8cf4cd6e86cc6dc90d2d389b906762f62c2c5e4768cc06"
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
