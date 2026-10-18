class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.2.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "a9a3efa1e2dd70aada0e3138ee9c3694b9477329070ab19c8b72083c5c7adb1e"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.2.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "1f48391523d849af41a916866e967883825c9daa74a38393446d02cba5b0eaab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.2.0/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e0ed5a339543da145466b56f324cb46c9181e7930e0fed09bf24efb749ddb09"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.2.0/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf0005f9dc8bbcc06654dd7c24a28801b6353cbf7aabcf6e1d631a76f9427810"
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
