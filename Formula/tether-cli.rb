class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.6.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "ed9593058014729934eafcdc7652ec24e2ff1c5fbd724721b2c521c2fe6d5434"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.6.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "6ddf162c692305127943408921d43a9fc2ac39d93623242ea0686366df092975"
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
