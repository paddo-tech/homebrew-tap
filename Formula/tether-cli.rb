class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.7.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "935caf75171a331dbd8e615157729b2852a3dc855439f43b1af5062a658f39b8"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.7.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "b11c4e901c27252bb6696355bcbfb7af1579529975c0b225acb709840fa6b51a"
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
