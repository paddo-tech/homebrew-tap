class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.12.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "f16270d3fcbdc611105075f832ee41c2c9f15f1b6a5dffc92777bc8e79e9c894"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "3680406c25c47eac109cd6ab5de634da4ec5f34c5b45279343f51d2e9b7b853a"
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
