class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "3364b10ce820bd9d4940769c4f65c8d563573f5dfda628f08dc96a3e0e521bec"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "85d135f899d78fb74b1eb3bc5e78f1d6c03031f319545f5feff6afb9379344b5"
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
