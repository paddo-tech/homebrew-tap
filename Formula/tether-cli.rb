class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.11.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.9/tether-x86_64-apple-darwin.tar.gz"
      sha256 "871adb1816d3a87a41a44b93fead658b0ce90f00fed62ee973c1489ec56d16ed"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.11.9/tether-aarch64-apple-darwin.tar.gz"
      sha256 "4fb976bafde112c83ef8b6e0936765eafef3b48fd60e54d3091878cbcd12dd6d"
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
