class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.12.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.3/tether-x86_64-apple-darwin.tar.gz"
      sha256 "7dc7547876a7d85dcc29b8143bf0baf1c992985c208ef93715d017de7f47241d"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.3/tether-aarch64-apple-darwin.tar.gz"
      sha256 "f2a2e4a98c2cd6d744ca00048ae24688deac17a927088a8db7c4093be113bb3a"
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
