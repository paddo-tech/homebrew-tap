class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.6/tether-x86_64-apple-darwin.tar.gz"
      sha256 "6dfc565b8a5a716789c1037ec459f3588662274c3cb5efb5beab64b77bf99686"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.6/tether-aarch64-apple-darwin.tar.gz"
      sha256 "5f0a7c4b1b8f8b4d4813d58bbf5a75edab7b743dc7099273181dc2dfe83a2279"
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
