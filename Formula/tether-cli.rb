class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.13.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "2fff238a64db10388ca59ff72dc9d1ea0a176168e964a59a29b171070685da2a"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.13.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "b2f60a1df4dec82a737ec9f4f37d716d265d6f749426cd15b40fca5f55a2c0ed"
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
