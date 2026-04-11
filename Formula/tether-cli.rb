class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.10/tether-x86_64-apple-darwin.tar.gz"
      sha256 "4abc1f2604f3f4cefbb35f8770cf2353d33aea25eff84182e84dd7a5c5c36ca8"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.10/tether-aarch64-apple-darwin.tar.gz"
      sha256 "3fdbcd583f6ea59ad8520c289cf90acc43c2e9f85563020e9761f73e0cc1d793"
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
