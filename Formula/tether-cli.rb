class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.4.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "b1c1c49bc3ef27921ec52c6ca72f5afa967d1ba3c467082b6cecc3027914d18c"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.4.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "4bda4421096906092e8f4d477dae0b5f4436e1f81571362b042377b2d405e5d8"
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
