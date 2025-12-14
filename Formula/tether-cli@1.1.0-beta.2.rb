class TetherCliAT110Beta2 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.0-beta.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.0-beta.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "17f0fd4623d8def417dd9f2eb3c91a4105c4f8e3c61fb48bb9ca6e85718de7f0"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.0-beta.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "4e6b412b5ed4a00b7d23c4a036abddfd51c6f4a4b8e4ff44d056b3251a65374b"
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
