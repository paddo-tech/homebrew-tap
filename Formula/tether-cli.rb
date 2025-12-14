class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.0.7/tether-x86_64-apple-darwin.tar.gz"
      sha256 "9826a855a7bd9d074502c96f16dd37be0a7606147ad028b91b69c8f5f4f0a844"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.0.7/tether-aarch64-apple-darwin.tar.gz"
      sha256 "353e821353f1c96fda4484d39d7eaa21ae79bcc161ebed460ca2da7ae0c3fed5"
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
