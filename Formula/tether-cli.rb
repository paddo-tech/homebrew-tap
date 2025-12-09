class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.0.5/tether-x86_64-apple-darwin.tar.gz"
      sha256 "fd426635c82e9d4f155fc47f5c3a664b9d9d8ce780d485de9e0c175ee745de1b"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.0.5/tether-aarch64-apple-darwin.tar.gz"
      sha256 "8221d39e79ee429fd405d4254e68cb61d94909cacbdc92d4f5b8161a4c695c52"
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
