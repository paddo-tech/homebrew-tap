class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.5/tether-x86_64-apple-darwin.tar.gz"
      sha256 "2fddca5738988d5550df7d946ca0082556be1311554532e18e3efc22655f9b1b"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.5/tether-aarch64-apple-darwin.tar.gz"
      sha256 "1564f44833871d60bb588b1b4d73d9b91bbd0b7ec25abfc3f583f99536c885ef"
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
