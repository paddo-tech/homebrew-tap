class TetherCliAT200Beta4 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.4/tether-x86_64-apple-darwin.tar.gz"
      sha256 "1569a803064c3ac9143c1bf7e5e20702f81514302060cd159f6637df4b4656a5"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.4/tether-aarch64-apple-darwin.tar.gz"
      sha256 "48cd1d6c9933c039388f834774e984d28b1572a66798cc0e4d86c38d24206894"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.4/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "079e08fe8f01f7fe586411d1af0689a888d2dfe76d7c132c8c4bc33e9ada7f86"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.4/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c162eaf62d88867628ddd5a009708ada6de8ba7a125ab2edb1f81f4940107819"
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
