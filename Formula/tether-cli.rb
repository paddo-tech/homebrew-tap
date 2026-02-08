class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.7.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "66fb3dfe81784d362372807bcce6da2c80f2e4d663101265e0360dcdcbc57b5c"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.7.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "eed8f3b7d43b94957129730616264371d6d8a7f5951ceb27708b2d9797bc52ac"
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
