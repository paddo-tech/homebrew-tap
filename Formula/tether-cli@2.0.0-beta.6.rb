class TetherCliAT200Beta6 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.6/tether-x86_64-apple-darwin.tar.gz"
      sha256 "0ba366fd10f91723b61ee6780213dc324a55a3c66849aef9e01fe4531ec57a46"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.6/tether-aarch64-apple-darwin.tar.gz"
      sha256 "c321699f12da6ba60adb6cd0505df3d95965e6b2e70de1dd8bbc5c197e993b56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.6/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ef46f578a0dcb2d77f4a4f7405bf315c841313f6d56fde9b3e929c3ff8607bd"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.6/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ce7714451fae431492caec2abe317b409ab225525d6899b97bc5d32fbc5f9a0"
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
