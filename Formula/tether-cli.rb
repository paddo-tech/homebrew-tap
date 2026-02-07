class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.6.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.6.3/tether-x86_64-apple-darwin.tar.gz"
      sha256 "17804ee4988977d788ee4e04d902b8dbae2da1cfff7f4030a8a830fb40fbc4e8"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.6.3/tether-aarch64-apple-darwin.tar.gz"
      sha256 "f87250ab19b05a78d8392310bde8f9091b7ac732bdd6f584bff37bcd67fec807"
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
