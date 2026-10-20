class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.4.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "a6db5c455e90109c81cdbe4b775d6fedbbc2581247c6d824536a26a3b228c553"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.4.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "cb2d4de2e213d28c2c814c6f6e70db106c3f3010031cfb482f073f96271569bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.4.0/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10e06cd817bf6c820655592cde8009ffbedb0984d753f8399a700e52f8ad757a"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.4.0/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d37f2e93af4f98d184d6ce2c70c8a9c996cdaa28442702d7f504dc759c6f1486"
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
