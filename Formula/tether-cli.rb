class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.3.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "0f607576ffca5056d945aaa4f2541dc0ca50055f69ed77b79daf8549442cba63"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.3.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "97b3d1a9ec49bae3939dc0218f0fe015ead9d4a2fcb49157b5400b04ab1b4f3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.3.0/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71d35f44df853c3ff695729872dbdf1b3822729a1c677924fa605aac79b39f22"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.3.0/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75e698fb2780fb040b40c7b517855dfd61a9d79303344b0884acdea73eb54624"
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
