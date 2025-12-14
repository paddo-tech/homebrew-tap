class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "2ff7f8c16b79dabec201e11ee704888ba0a551a2a490ae5660de399bf3100016"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "1e5408f7469e20685e9c6e2fe1e9966ea85b7b17be56b5898fed3b7da872fe6b"
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
